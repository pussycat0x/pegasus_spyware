.class public Lcom/xxGameAssistant/utility/NativeFileInstaller;
.super Ljava/lang/Object;
.source "NativeFileInstaller.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NativeFileInstaller"

.field static cacheDir:Ljava/lang/String;

.field static filenamesExe:[Ljava/lang/String;

.field static filenamesSO:[Ljava/lang/String;

.field static installDirCache:Ljava/io/File;

.field static libFile:[Ljava/lang/String;

.field static soFileDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    const-string v0, "pao/"

    sput-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->cacheDir:Ljava/lang/String;

    .line 18
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "inject"

    aput-object v1, v0, v2

    sput-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesExe:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "libghost.so"

    aput-object v1, v0, v2

    const-string v1, "libhook.so"

    aput-object v1, v0, v3

    sput-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    .line 21
    const-string v0, "/data/local/tmp/pao/"

    sput-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->soFileDir:Ljava/lang/String;

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "/data/data/com.xxGameAssistant.pao/lib/libsubstrate.so"

    aput-object v1, v0, v2

    sput-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->libFile:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ensureEmptyDir(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 80
    move-object v0, p0

    .line 82
    .local v0, "installDir":Ljava/io/File;
    const-string v1, "NativeFileInstaller"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 89
    invoke-virtual {v0, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 90
    invoke-virtual {v0, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 91
    invoke-virtual {v0, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 93
    return-object v0
.end method

.method static extractAssetsFile(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 10
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 98
    const/16 v1, 0x1000

    .line 99
    .local v1, "buffsize":I
    new-array v0, v1, [B

    .line 101
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 108
    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 109
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    .local v6, "outStream":Ljava/io/FileOutputStream;
    const/4 v2, -0x1

    .line 112
    .local v2, "chunkSize":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    .line 115
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 116
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 118
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/io/File;->setReadable(Z)Z

    .line 119
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/io/File;->setWritable(Z)Z

    .line 120
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .end local v2    # "chunkSize":I
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v7

    .line 113
    .restart local v2    # "chunkSize":I
    .restart local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "outStream":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 121
    .end local v2    # "chunkSize":I
    .end local v5    # "inStream":Ljava/io/InputStream;
    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-static {p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->getCacheDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCacheDirFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/xxGameAssistant/utility/NativeFileInstaller;->cacheDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v0, "dirFile":Ljava/io/File;
    return-object v0
.end method

.method public static getSODir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    sget-object v0, Lcom/xxGameAssistant/utility/NativeFileInstaller;->soFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public static install(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string v2, "NativeFileInstaller"

    const-string v3, "### install begin!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->getCacheDirFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->ensureEmptyDir(Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    .line 137
    const-string v2, "NativeFileInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "##### exe -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesExe:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 147
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 153
    invoke-static {p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installGhostAndHook(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->xx_do_link()V

    .line 156
    const-string v2, "NativeFileInstaller"

    const-string v3, "### install end!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 142
    :cond_0
    sget-object v2, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    sget-object v3, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesExe:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3, p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->extractAssetsFile(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 143
    .local v1, "suc":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NativeFileInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Orz exe: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesExe:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "suc":Ljava/lang/Boolean;
    :cond_2
    sget-object v2, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    sget-object v3, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3, p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->extractAssetsFile(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 150
    .restart local v1    # "suc":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NativeFileInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Orz so: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static installGhostAndHook(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    :try_start_0
    const-string v11, "NativeFileInstaller"

    const-string v12, "#############\t\tinstallGhostAndHook start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const-string v12, "su"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 198
    .local v8, "rootProcess":Ljava/lang/Process;
    new-instance v7, Ljava/io/PrintWriter;

    .line 199
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 198
    invoke-direct {v7, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v7, "printWriter":Ljava/io/PrintWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "baseCacheDir":Ljava/lang/String;
    invoke-static {p0}, Lcom/xxGameAssistant/utility/NativeFileInstaller;->getSODir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "baseSODir":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "rm -r "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "makeSODirEmptyCommand":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mkdir -p "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "chmod 777 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/4 v9, 0x0

    .line 214
    .local v9, "sourceFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 215
    .local v4, "destFilePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 216
    .local v3, "commandStr":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v11, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    array-length v11, v11

    if-lt v5, v11, :cond_0

    .line 226
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "cmd":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string v11, "NativeFileInstaller"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "installGhostAndHook run cmd: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 232
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 233
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    .line 234
    const-string v11, "NativeFileInstaller"

    const-string v12, "#############\t\tinstallGhostAndHook end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v0    # "baseCacheDir":Ljava/lang/String;
    .end local v1    # "baseSODir":Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v3    # "commandStr":Ljava/lang/String;
    .end local v4    # "destFilePath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "makeSODirEmptyCommand":Ljava/lang/String;
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .end local v8    # "rootProcess":Ljava/lang/Process;
    .end local v9    # "sourceFilePath":Ljava/lang/String;
    .end local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 217
    .restart local v0    # "baseCacheDir":Ljava/lang/String;
    .restart local v1    # "baseSODir":Ljava/lang/String;
    .restart local v3    # "commandStr":Ljava/lang/String;
    .restart local v4    # "destFilePath":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "makeSODirEmptyCommand":Ljava/lang/String;
    .restart local v7    # "printWriter":Ljava/io/PrintWriter;
    .restart local v8    # "rootProcess":Ljava/lang/Process;
    .restart local v9    # "sourceFilePath":Ljava/lang/String;
    .restart local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 218
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    aget-object v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "dd if="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 220
    const-string v12, "of="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 219
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "chmod 777 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 235
    .end local v0    # "baseCacheDir":Ljava/lang/String;
    .end local v1    # "baseSODir":Ljava/lang/String;
    .end local v3    # "commandStr":Ljava/lang/String;
    .end local v4    # "destFilePath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "makeSODirEmptyCommand":Ljava/lang/String;
    .end local v7    # "printWriter":Ljava/io/PrintWriter;
    .end local v8    # "rootProcess":Ljava/lang/Process;
    .end local v9    # "sourceFilePath":Ljava/lang/String;
    .end local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public static isRoot()Z
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    const-string v0, "Bash.isRoot"

    const-string v1, "Bash: this is a root device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    .line 263
    :cond_1
    const-string v0, "Bash.isRoot"

    const-string v1, "Bash: this isn\'t a root device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static test()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x0

    .line 32
    .local v0, "file":Ljava/io/File;
    const-string v4, "NativeFileInstaller"

    const-string v5, "########  NativeFileInstaller test start!!!!\n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->libFile:[Ljava/lang/String;

    array-length v2, v4

    .line 36
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 45
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesExe:[Ljava/lang/String;

    array-length v2, v4

    .line 46
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 55
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    array-length v2, v4

    .line 56
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_4

    .line 65
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    array-length v2, v4

    .line 66
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v2, :cond_6

    .line 74
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/xxGameAssistant/utility/NativeFileInstaller;->libFile:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    :goto_4
    return v3

    .line 37
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->libFile:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 38
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install failed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 41
    :cond_1
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install succeed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesExe:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 48
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install failed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 51
    :cond_3
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install succeed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 57
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->installDirCache:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 58
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install failed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 61
    :cond_5
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install succeed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 67
    :cond_6
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v4, Lcom/xxGameAssistant/utility/NativeFileInstaller;->soFileDir:Ljava/lang/String;

    sget-object v5, Lcom/xxGameAssistant/utility/NativeFileInstaller;->filenamesSO:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 68
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install failed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 71
    :cond_7
    const-string v4, "NativeFileInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " install succeed!\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method static xx_do_link()V
    .locals 8

    .prologue
    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 164
    .local v3, "rootProcess":Ljava/lang/Process;
    new-instance v2, Ljava/io/PrintWriter;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 164
    invoke-direct {v2, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 167
    .local v2, "printWriter":Ljava/io/PrintWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "mount -o remount,rw /system\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    sget-object v6, Lcom/xxGameAssistant/utility/NativeFileInstaller;->libFile:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v4, v6, v7

    .line 172
    .local v4, "sourceFilePath":Ljava/lang/String;
    const-string v1, "/system/lib/libsubstrate.so"

    .line 173
    .local v1, "destFilePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rm "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "commandStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ln -s "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 777 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v6, "mount -o remount,ro /system\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 183
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 184
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "commandStr":Ljava/lang/String;
    .end local v1    # "destFilePath":Ljava/lang/String;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v4    # "sourceFilePath":Ljava/lang/String;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v6

    goto :goto_0
.end method
