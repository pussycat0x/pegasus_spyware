.class Lcom/xxGameAssistant/pao/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxGameAssistant/pao/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxGameAssistant/pao/MainActivity;


# direct methods
.method constructor <init>(Lcom/xxGameAssistant/pao/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 97
    const/16 v16, 0x0

    .line 99
    .local v16, "urlConn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    sget-object v18, Lcom/xxGameAssistant/pao/MTApplication;->mCheckUpdateURL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    .line 101
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 102
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 103
    sget v18, Lcom/xxGameAssistant/pao/MTApplication;->mConnectTimeout:I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    sget v18, Lcom/xxGameAssistant/pao/MTApplication;->mReadTimeout:I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 108
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    .end local v15    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 115
    .restart local v15    # "url":Ljava/net/URL;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 116
    .local v8, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v2, "bOut":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 118
    .local v4, "buffer":[B
    const/4 v13, -0x1

    .line 119
    .local v13, "size":I
    :goto_1
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_2

    .line 122
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "strVersion":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/xxGameAssistant/pao/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 133
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/xxGameAssistant/pao/MainActivity;->access$0(Lcom/xxGameAssistant/pao/MainActivity;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 132
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 134
    .local v11, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 136
    .local v17, "vm":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-gtz v18, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 218
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "size":I
    .end local v14    # "strVersion":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v17    # "vm":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 219
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v13    # "size":I
    .restart local v15    # "url":Ljava/net/URL;
    :cond_2
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v2, v4, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    .line 220
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v13    # "size":I
    .end local v15    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 222
    .local v6, "e":Ljava/net/SocketTimeoutException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 141
    .end local v6    # "e":Ljava/net/SocketTimeoutException;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v13    # "size":I
    .restart local v14    # "strVersion":Ljava/lang/String;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v17    # "vm":Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 142
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V

    .line 141
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/xxGameAssistant/pao/MainActivity;->access$1(Lcom/xxGameAssistant/pao/MainActivity;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 149
    new-instance v15, Ljava/net/URL;

    .end local v15    # "url":Ljava/net/URL;
    sget-object v18, Lcom/xxGameAssistant/pao/MTApplication;->mPackageURL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v15    # "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    .line 151
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 152
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 153
    sget v18, Lcom/xxGameAssistant/pao/MTApplication;->mConnectTimeout:I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    sget v18, Lcom/xxGameAssistant/pao/MTApplication;->mReadTimeout:I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 223
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "size":I
    .end local v14    # "strVersion":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v17    # "vm":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 225
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 141
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v13    # "size":I
    .restart local v14    # "strVersion":Ljava/lang/String;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v17    # "vm":Ljava/lang/String;
    :catchall_0
    move-exception v18

    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v18
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 228
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "size":I
    .end local v14    # "strVersion":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v17    # "vm":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 229
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 162
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v13    # "size":I
    .restart local v14    # "strVersion":Ljava/lang/String;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v17    # "vm":Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 166
    new-instance v5, Ljava/io/File;

    .line 167
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    .line 168
    const-string v19, "RhythmPlugin"

    .line 166
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 170
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 171
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 172
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/File;->setExecutable(Z)Z

    .line 173
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 174
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/File;->setReadable(Z)Z

    .line 177
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 178
    const-string v19, "xxRhythmPlugin_android.apk"

    .line 177
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 180
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 182
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 183
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/File;->setExecutable(Z)Z

    .line 184
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/io/File;->setReadable(Z)Z

    .line 186
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v10, "out":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    .local v3, "bufOut":Ljava/io/BufferedOutputStream;
    const/4 v13, -0x1

    .line 190
    :goto_2
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    .line 194
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 197
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 198
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 199
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 201
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    .line 210
    const-string v19, "application/vnd.android.package-archive"

    .line 209
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/xxGameAssistant/pao/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxGameAssistant/pao/MainActivity$1;->this$0:Lcom/xxGameAssistant/pao/MainActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/xxGameAssistant/pao/MainActivity;->finish()V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 230
    .end local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "dir":Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "size":I
    .end local v14    # "strVersion":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    .end local v17    # "vm":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 232
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 191
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bufOut":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "packInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v13    # "size":I
    .restart local v14    # "strVersion":Ljava/lang/String;
    .restart local v15    # "url":Ljava/net/URL;
    .restart local v17    # "vm":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    :try_start_8
    move/from16 v0, v18

    invoke-virtual {v3, v4, v0, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2
.end method
