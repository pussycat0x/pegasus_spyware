.class public Lcom/xxGameAssistant/utility/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field static mContext:Landroid/content/Context;

.field static mFileStream:Ljava/io/FileOutputStream;

.field static mfileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sput-object p1, Lcom/xxGameAssistant/utility/FileUtil;->mContext:Landroid/content/Context;

    .line 24
    sput-object p2, Lcom/xxGameAssistant/utility/FileUtil;->mfileName:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    .line 26
    return-void
.end method


# virtual methods
.method public fclose()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    sget-object v2, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 52
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd#HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    sget-object v2, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "==Terminated at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    sget-object v2, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public fflush()V
    .locals 2

    .prologue
    .line 42
    :try_start_0
    sget-object v1, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public fprintf(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    sget-object v1, Lcom/xxGameAssistant/utility/FileUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xxGameAssistant/utility/FileUtil;->mfileName:Ljava/lang/String;

    const v3, 0x8000

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    .line 31
    sget-object v1, Lcom/xxGameAssistant/utility/FileUtil;->mFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
