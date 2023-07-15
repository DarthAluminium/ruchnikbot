import os
import telebot

token = str(os.getenv("TGBOT_TOKEN"))
bot = telebot.TeleBot(token)
@bot.message_handler(content_types=['text'])
def work_with_text(message):
    bot.send_message(message.from_user.id, message.text)

bot.polling(non_stop = True)
