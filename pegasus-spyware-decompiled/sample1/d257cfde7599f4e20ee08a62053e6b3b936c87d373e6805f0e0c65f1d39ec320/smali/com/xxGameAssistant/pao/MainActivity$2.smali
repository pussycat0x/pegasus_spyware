.class Lcom/xxGameAssistant/pao/MainActivity$2;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxGameAssistant/pao/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxGameAssistant/pao/MainActivity;


# direct methods
.method constructor <init>(Lcom/xxGameAssistant/pao/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 293
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u8d85\u65f6"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0, v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$6(Lcom/xxGameAssistant/pao/MainActivity;Z)V

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u6682\u65e0\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 263
    :pswitch_3
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    sget-object v1, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xxGameAssistant/pao/MainActivity;->access$7(Lcom/xxGameAssistant/pao/MainActivity;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$8(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v1}, Lcom/xxGameAssistant/pao/MainActivity;->access$9(Lcom/xxGameAssistant/pao/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :pswitch_4
    const/4 v0, 0x0

    sput-object v0, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;

    goto/16 :goto_0

    .line 269
    :pswitch_5
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u66f4\u65b0\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 275
    :pswitch_6
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u68c0\u67e5\u66f4\u65b0\u9519\u8bef"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 281
    :pswitch_7
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 287
    :pswitch_8
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0, v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$10(Lcom/xxGameAssistant/pao/MainActivity;Z)V

    .line 288
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$3(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$4(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xxGameAssistant/pao/MTApplication;->mIsNewestVersion:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$2;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
