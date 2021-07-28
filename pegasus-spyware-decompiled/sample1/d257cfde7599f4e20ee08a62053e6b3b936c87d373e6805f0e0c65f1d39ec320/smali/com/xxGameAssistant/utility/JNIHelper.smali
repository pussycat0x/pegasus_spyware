.class public Lcom/xxGameAssistant/utility/JNIHelper;
.super Ljava/lang/Object;
.source "JNIHelper.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xxGameAssistant/utility/JNIHelper;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static native nativeSetExternalAssetPath(Ljava/lang/String;)V
.end method

.method public static native nativeSetPackageName(Ljava/lang/String;)V
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getAbsolutePathOnExternalStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "relevantPath"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public nativeInit()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xxGameAssistant/utility/JNIHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/xxGameAssistant/pao/MTApplication;

    invoke-virtual {v0}, Lcom/xxGameAssistant/pao/MTApplication;->getMTPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xxGameAssistant/utility/JNIHelper;->nativeSetPackageName(Ljava/lang/String;)V

    .line 23
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/xxGameAssistant/utility/JNIHelper;->getAbsolutePathOnExternalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xxGameAssistant/utility/JNIHelper;->nativeSetExternalAssetPath(Ljava/lang/String;)V

    .line 24
    return-void
.end method
