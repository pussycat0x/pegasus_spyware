.class Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;
.super Ljava/lang/Thread;
.source "MTApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxGameAssistant/pao/MTApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxGameAssistant/pao/MTApplication;


# direct methods
.method constructor <init>(Lcom/xxGameAssistant/pao/MTApplication;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v1}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->install(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->isRoot()Z

    move-result v1

    sput-boolean v1, Lcom/xxGameAssistant/pao/MTApplication;->mIsRoot:Z

    .line 103
    invoke-static {}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->test()Z

    move-result v1

    sput-boolean v1, Lcom/xxGameAssistant/pao/MTApplication;->mIsInstallerOk:Z

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v1}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/xxGameAssistant/pao/MTApplication$InstallerThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v1}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void

    .line 108
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
