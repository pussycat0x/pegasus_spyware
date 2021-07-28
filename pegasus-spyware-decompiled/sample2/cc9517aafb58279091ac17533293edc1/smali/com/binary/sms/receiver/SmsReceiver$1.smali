.class Lcom/binary/sms/receiver/SmsReceiver$1;
.super Ljava/lang/Object;
.source "SmsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/SmsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/binary/sms/receiver/SmsReceiver;

.field private final synthetic val$constIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/binary/sms/receiver/SmsReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/binary/sms/receiver/SmsReceiver$1;->this$0:Lcom/binary/sms/receiver/SmsReceiver;

    iput-object p2, p0, Lcom/binary/sms/receiver/SmsReceiver$1;->val$constIntent:Landroid/content/Intent;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 106
    :try_start_0
    iget-object v8, p0, Lcom/binary/sms/receiver/SmsReceiver$1;->val$constIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 110
    iget-object v8, p0, Lcom/binary/sms/receiver/SmsReceiver$1;->val$constIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 113
    const-string v8, "pdus"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 114
    .local v6, "pdus":[Ljava/lang/Object;
    array-length v8, v6

    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    .line 117
    array-length v8, v6

    new-array v5, v8, [Landroid/telephony/SmsMessage;

    .line 118
    .local v5, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pdus.length: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 122
    const-string v1, ""

    .line 123
    .local v1, "address":Ljava/lang/String;
    const-string v7, ""

    .line 124
    .local v7, "userDatabite":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v5

    if-lt v4, v8, :cond_1

    .line 133
    invoke-static {}, Lcom/binary/sms/receiver/Logger;->addLine()V

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Binary SMS at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "From number: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data:\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 150
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v5    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v6    # "pdus":[Ljava/lang/Object;
    .end local v7    # "userDatabite":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 126
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "i":I
    .restart local v5    # "msgs":[Landroid/telephony/SmsMessage;
    .restart local v6    # "pdus":[Ljava/lang/Object;
    .restart local v7    # "userDatabite":Ljava/lang/String;
    :cond_1
    aget-object v8, v6, v4

    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v5, v4

    .line 128
    aget-object v8, v5, v4

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    aget-object v10, v5, v4

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v10

    const-string v11, "utf8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "i":I
    .end local v5    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v6    # "pdus":[Ljava/lang/Object;
    .end local v7    # "userDatabite":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onReceive Exception- "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
