#!/bin/bash
set +vx

# Array de nomes de variáveis
NOMES=("ZENVIA_CANALSMS_REST_OTP-TOKEN"
       "ZENVIA_CANALSMS_REST_MULTIPLO-BULK"
       "ZENVIA_CANALSMS_RESPONSYS"
       "ZENVIA_CANALSMS_SMPP"
       "ZENVIA_CANALSMS_FTP"
       "ZENVIA_CANALSMS_ZENVIA-CONNECT"
       "ZENVIA_PORTAL_CLOUD"
       "ZENVIA_CANAL_FACEBOOK"
       "ZENVIA_CANALSMS_CONECTOR"
       "ZENVIA_BOT_GET-FLOW-CHANNEL"
       "ZENVIA_BOT_GET-FLOW-CONTENT"
       "ZENVIA_BOT_HEALTH-CHECK"
       "ZENVIA_BOT_LIST-FLOW"
       "ZENVIA_VOICEAPP_STATUS"
       "ZENVIA_CANALVOZ_CHAMADA-ATENDIDA"
       "ZENVIA_CANALVOZ_CHAMADA-VOZ"    
       "ZENVIA_CANALVOZ_TORPEDO-AUDIO"
       "ZENVIA_CANALVOZ_TORPEDO-COMPOSTO"
       "ZENVIA_CANALVOZ_TORPEDO-VOZ"
       "ZENVIA_CHAT_PORTAL-ADMIN"
       "ZENVIA_CHAT_CHAT-PORTAL"
       "ZENVIA_CHAT_CHAT-CORE"
       "ZENVIA_CHAT_CHAT-MICROSERVICES"
       "ZENVIA_CHAT_CHAT-API"
       "ZENVIA_BOT_WORKFLOWIINTERNAL-QUEUE"
       "ZENVIA_CONVERSION_DESKTOP-MOBILE"
       "ZENVIA_CONVERSION_WEBSITE"
       "ZENVIA_CONVERSION_API-READONLY"
       "ZENVIA_CONVERSION_API"
       "ZENVIA_CONVERSION_WHATSAPP"
       "ZENVIA_CONVERSION_AUTH-SESSIONS"
       "ZENVIA_CANALSMS_REST-OTP-TOKEN"
       "ZENVIA_CANALSMS_REST-MULTIPLO-BULK"
       "ZENVIA_CANALWHATSAPP_API"
       "ZENVIA_CONVERSION_INSTAGRAM"
       "ZENVIA_CONVERSION_FACEBOOK-MESSENGER"
       "ZENVIA_ZENVIA_API-ZENVIA"
       "ZENVIA_CANALRCS_CONNECTOR-API"
       "ZENVIA_CANALEMAIL_CONNECTOR-API"
       "ZENVIA_CANALGBM_CONNECTOR-API"     
       "ZENVIA_ATRAIR_BROADCAST"
       "ZENVIA_ATRAIR_BROADCAST-REPORT"
       "ZENVIA_ATRAIR_BROADCAST-CONTACTS"
       "ZENVIA_ATRAIR_BROADCAST-AUTOMATION"
       "ZENVIA_BOTS_NLU-HEARTBEAT"
       "ZENVIA_BOTS_NLU-ALTU"
       "ZENVIA_BOTS_NLU-ALTU-GATEWAY"
       "ZENVIA_BOTS_NLU-ALTUBOTS"        
       "ZENVIA_SERVICEAPI_TICKETS"            
       "ZENVIA_SERVICEAPI_GENERAL"           
       "ZENVIA_SERVICEAPI_DASHBOARD"          
       "ZENVIA_BOTS_NLU-CONTROLE-INATIVIDADE"
       "ZENVIA_BOTS_NLU-GESTAO-BOTS-IA")

# Array de valores correspondentes às variáveis
VALORES=("0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Qx5F1A23mvQGbioNS42ZuQ"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Rzid7zu2DXLSdoVLsRum1R"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QHGBKDCB5yDeXnDNevfcTw"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-R-TocMh48Ti5UPKaL2JtYT"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RFEaalWm0foHrnEhGek4ht"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-ROVOCvxcSeRK-8Ic4HsOjY"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-SA85j7DcIHAi63WBa51VdA"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Q-5YL3BGge8wrsp6eCQcv-"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QOw8eNtZdQ5j2dUS_5iSmo"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-ScYTQTxBG__JlgQ58zXzX9"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RNseul5M_4ZujwT_ULCQaN"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-SW2OuTlEyesfmjTXa7IwK4"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-R0nwhh3IuwbKs8La-zZO3D"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-REuOVJmW4-XZ7R4PLKYNw_"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QFjRoFDpNJm-hFJJMi2P_0"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-SFIKjsTQ5l20p0o3l4eryu"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-SG7mdSniYzO_tH4Kg5FKdf"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-S3AFD0yG3J6CKQA4h3ZC9Z"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-TQlT_sxsbDE1-wViQv7SsV"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-T351JuXe3PAmHLbWflDr-0" 
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RvMvteArEXXNeorb1IZ_lX"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-S95ke9PHwFo2lgPGQvUEO1"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Q3vlFCILLvPldlH23WjSpd"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Q5rjIrWyRu7e5siFJi5ODx"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RuLJw5e8O85D3juBvGOruP"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RlbGUx8KfsQMXwrJOFaqGg"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QLMueK2ltQ81r4W-XFE734"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Rxeq0UBpAJ8QLFFly-GZyB"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RuPtZi4cZuGYD6XKjSXgG8"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RQ3naFV33I1ajmcqbNlL5a"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-SNi8UKxWUa2dSwkICUc059"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-R95tc_khFNhkC45IWBxZ9X"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RlhUgRlVwr17d_FRHpxBML"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Rt-C8xWH34dQDSbptxsOkF"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-S-JAitZ1NWmLpphaCyOQuz"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Q_0qAY9ei3VOuKnWPgcK4p"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Rek-kyT6Tq4RgXcQiB23zA"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-S2I-fxKfGiELsDsWd-VBEl"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QeYU-0ZBtH8GrWgSWjTq3H"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-R3_xE06kVG5-jrMCxaOkHM"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-TJolzUnxd9703iaX5e7J0Z"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-TZriVrrXHQaf5XgtcEUbIF"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QwFdbvsXCdZ1-ZFF0rvRB-"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QboeVJQEs1xqbeecowdarl"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RmHxVJZ0y-IHTyY60dGkoH"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Q9bz-abRslyvVu9cQYmjxk"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-QYgjMsoC4aasGgHTKetviI"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Tm3ja7Sow6U3KNREl70i_K"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-TFhBD55gSlSEvoRhzYfrVA"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-Sim-kjtKxt77YJOWM-h-Y6"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-TPYqtuN_aOjv6TCFxfhOLA"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-RbZ2otm7bS-E1-uvoCVfjU"
         "0r7fsC3sMMDZXFejqRsDwLuLckWi4hBmhH7lrbwub-TkgDLECbuRcyBd8aia2g7b")

# Função para exibição da mensagem de erro na utilização do script.
exibir_uso() {
  echo "Uso: $0 <NOME_DA_VARIAVEL>"
  echo "Exemplo: $0 ZENVIA_CANALSMS_REST_OTP-TOKEN"
}

# Verificar se o parâmetro foi fornecido
if [ $# -lt 1 ]; then
  echo "Erro: Nenhuma variável informada."
  exibir_uso
  exit 1
fi

# Variável fornecida pelo usuário
VARIAVEL_INPUT=$1

# Variável para armazenar o valor correspondente
VALOR_ENCONTRADO=""

# Procurar o valor correspondente à variável fornecida
for i in "${!NOMES[@]}"; do
  if [ "${NOMES[$i]}" == "$VARIAVEL_INPUT" ]; then
    VALOR_ENCONTRADO="${VALORES[$i]}"
    break
  fi
done

# Verificar se a variável foi encontrada
if [ -n "$VALOR_ENCONTRADO" ]; then
  URL="https://status.zenvia.com/component/$VALOR_ENCONTRADO"
  echo "URL a ser consultada: $URL"

  # Fazer requisição com curl
  echo "Resultado em milissegundos:"
  curl -s "$URL" | grep "global.time.units.milliseconds" | sed -E 's/.*class="fs-lg mb-2">([0-9]+).*/\1/'
  #curl -s "$URL" | 
else
  echo "A variável $VARIAVEL_INPUT não existe."
fi
