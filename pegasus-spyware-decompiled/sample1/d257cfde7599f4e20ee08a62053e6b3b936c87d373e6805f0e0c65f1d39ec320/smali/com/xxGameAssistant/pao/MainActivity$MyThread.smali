.class Lcom/xxGameAssistant/pao/MainActivity$MyThread;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxGameAssistant/pao/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxGameAssistant/pao/MainActivity;


# direct methods
.method constructor <init>(Lcom/xxGameAssistant/pao/MainActivity;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-virtual {v2}, Lcom/xxGameAssistant/pao/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/xxGameAssistant/pao/MTApplication;

    .line 409
    invoke-virtual {v2}, Lcom/xxGameAssistant/pao/MTApplication;->getMTPackageName()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "targetPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$11(Lcom/xxGameAssistant/pao/MainActivity;)Lcom/xxGameAssistant/utility/PackageHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xxGameAssistant/utility/PackageHelper;->openApp(Ljava/lang/String;)Lcom/xxGameAssistant/utility/PackageHelper$PH_FLAG;

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v2}, Lcom/xxGameAssistant/pao/MainActivity;->access$11(Lcom/xxGameAssistant/pao/MainActivity;)Lcom/xxGameAssistant/utility/PackageHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xxGameAssistant/utility/PackageHelper;->isAppRunning(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 427
    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v5}, Lcom/xxGameAssistant/pao/MainActivity;->access$12(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v5}, Lcom/xxGameAssistant/pao/MainActivity;->access$13(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xxGameAssistant/utility/InjectHelper;->setGameMode(Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/xxGameAssistant/pao/MainActivity$MyThread;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    invoke-static {v2, v1}, Lcom/xxGameAssistant/utility/InjectHelper;->executeCmd(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    .end local v1    # "targetPackageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 420
    .restart local v1    # "targetPackageName":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/xxGameAssistant/pao/MainActivity;->GameInjectionWatcherIntervalInMS:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v1    # "targetPackageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
