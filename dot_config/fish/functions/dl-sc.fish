function dl-sc --description 'Baixa playlist do SoundCloud em WAV para ~/Music/Download/'
    if test (count $argv) -lt 1
        echo "Erro: Você precisa passar o link da playlist."
        echo "Uso: dl-sc <URL> [Nome da Pasta]"
        return 1
    end

    set url $argv[1]
    
    # Se você passar um segundo argumento, vira uma subpasta.
    # Se não, joga direto na raiz da pasta Download.
    if test (count $argv) -ge 2
        set target_dir "$HOME/Music/Download/$argv[2]"
    else
        set target_dir "$HOME/Music/Download"
    end

    mkdir -p $target_dir
    cd $target_dir

    echo "📥 Baixando playlist em: $target_dir"
    
    yt-dlp -i -f bestaudio --extract-audio --audio-format wav \
        -o "%(playlist_index)s - %(uploader)s - %(title)s.%(ext)s" \
        $url

    echo "✅ Download concluído!"
end
