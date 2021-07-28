.class Lcom/xxGameAssistant/pao/MainActivity$3;
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
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v1}, Lcom/xxGameAssistant/pao/MainActivity;->access$14(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v1

    long-to-int v0, v1

    .line 330
    .local v0, "tMTPackageNameId":I
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-virtual {v1}, Lcom/xxGameAssistant/pao/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/xxGameAssistant/pao/MTApplication;

    .line 331
    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$15(Lcom/xxGameAssistant/pao/MainActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xxGameAssistant/pao/MTApplication;->setMTPackageName(Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    new-instance v2, Lcom/xxGameAssistant/utility/PackageHelper;

    iget-object v3, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-direct {v2, v3}, Lcom/xxGameAssistant/utility/PackageHelper;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$16(Lcom/xxGameAssistant/pao/MainActivity;Lcom/xxGameAssistant/utility/PackageHelper;)V

    .line 336
    new-instance v1, Lcom/xxGameAssistant/pao/MainActivity$MyThread;

    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-direct {v1, v2}, Lcom/xxGameAssistant/pao/MainActivity$MyThread;-><init>(Lcom/xxGameAssistant/pao/MainActivity;)V

    invoke-virtual {v1}, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->start()V

    .line 338
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    iget-object v2, v1, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/xxGameAssistant/pao/MainActivity;->access$17(Lcom/xxGameAssistant/pao/MainActivity;Z)V

    .line 340
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    iget-object v1, v1, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 338
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MainActivity$3;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-virtual {v1}, Lcom/xxGameAssistant/pao/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/xxGameAssistant/pao/MTApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xxGameAssistant/pao/MTApplication;->setHandler(Landroid/os/Handler;)V

    .line 345
    return-void

    .line 338
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
