.class public Lcom/binary/sms/receiver/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final PEGASUS:Ljava/lang/String; = "pegasus"

.field private static activity:Landroid/app/Activity;

.field private static editor:Landroid/widget/EditText;

.field private static isDebug:Z

.field private static logger:Lcom/binary/sms/receiver/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/binary/sms/receiver/Logger;->editor:Landroid/widget/EditText;

    .line 18
    new-instance v0, Lcom/binary/sms/receiver/Logger;

    invoke-direct {v0}, Lcom/binary/sms/receiver/Logger;-><init>()V

    sput-object v0, Lcom/binary/sms/receiver/Logger;->logger:Lcom/binary/sms/receiver/Logger;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/binary/sms/receiver/Logger;->editor:Landroid/widget/EditText;

    return-object v0
.end method

.method public static addLine()V
    .locals 3

    .prologue
    .line 108
    sget-boolean v1, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v0, "<font color=\'#FF0000\'>___________________________________</font>"

    .line 113
    .local v0, "blueLine":Ljava/lang/String;
    const-string v1, "pegasus"

    const-string v2, "_____________________________________"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lcom/binary/sms/receiver/Logger;->editor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/binary/sms/receiver/Logger;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Lcom/binary/sms/receiver/Logger;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/binary/sms/receiver/Logger$2;

    invoke-direct {v2}, Lcom/binary/sms/receiver/Logger$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    const-string v0, "pegasus"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "pegasus"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    sget-object v0, Lcom/binary/sms/receiver/Logger;->editor:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    const-string v0, "pegasus"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    return-void
.end method

.method public static getDefault()Lcom/binary/sms/receiver/Logger;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/binary/sms/receiver/Logger;->logger:Lcom/binary/sms/receiver/Logger;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public static info(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "printToScreen"    # Z

    .prologue
    .line 87
    sget-boolean v0, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "pegasus"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_0

    .line 92
    sget-object v0, Lcom/binary/sms/receiver/Logger;->editor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/binary/sms/receiver/Logger;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/binary/sms/receiver/Logger;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/binary/sms/receiver/Logger$1;

    invoke-direct {v1, p0}, Lcom/binary/sms/receiver/Logger$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    return v0
.end method

.method public static setTextField(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .param p0, "mEditor"    # Landroid/widget/EditText;
    .param p1, "skeletonActivity"    # Landroid/app/Activity;

    .prologue
    .line 81
    sput-object p0, Lcom/binary/sms/receiver/Logger;->editor:Landroid/widget/EditText;

    .line 82
    sput-object p1, Lcom/binary/sms/receiver/Logger;->activity:Landroid/app/Activity;

    .line 84
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-boolean v0, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "pegasus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    const-string v0, "pegasus"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-boolean v0, Lcom/binary/sms/receiver/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "pegasus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method
