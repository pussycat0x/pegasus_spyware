.class Lcom/binary/sms/receiver/Logger$2;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/Logger;->addLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/binary/sms/receiver/Logger;->access$0()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Lcom/binary/sms/receiver/Logger;->access$0()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "<font color=\'#FF0000\'>___________________________________</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {}, Lcom/binary/sms/receiver/Logger;->access$0()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method
