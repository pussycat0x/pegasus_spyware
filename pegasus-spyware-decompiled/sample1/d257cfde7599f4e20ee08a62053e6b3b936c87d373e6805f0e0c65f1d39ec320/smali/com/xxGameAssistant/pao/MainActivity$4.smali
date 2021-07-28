.class Lcom/xxGameAssistant/pao/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xxGameAssistant/pao/MainActivity;->doMain()V
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
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$18(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$19(Lcom/xxGameAssistant/pao/MainActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$5(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0, v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$17(Lcom/xxGameAssistant/pao/MainActivity;Z)V

    .line 361
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v0}, Lcom/xxGameAssistant/pao/MainActivity;->access$2(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    iget-object v1, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/xxGameAssistant/pao/MainActivity$4;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 362
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
