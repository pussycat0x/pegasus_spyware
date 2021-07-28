.class Lcom/xxGameAssistant/pao/MTApplication$MyThread;
.super Ljava/lang/Thread;
.source "MTApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxGameAssistant/pao/MTApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxGameAssistant/pao/MTApplication;


# direct methods
.method constructor <init>(Lcom/xxGameAssistant/pao/MTApplication;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 122
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11, v12}, Lcom/xxGameAssistant/pao/MTApplication;->access$1(Lcom/xxGameAssistant/pao/MTApplication;Landroid/os/Handler;)V

    .line 123
    const/4 v7, 0x4

    .line 124
    .local v7, "status":I
    const/4 v8, 0x0

    .line 125
    .local v8, "url":Ljava/net/URL;
    const/4 v10, 0x0

    .line 126
    .local v10, "urlConn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 129
    .local v5, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    sget-object v11, Lcom/xxGameAssistant/pao/MTApplication;->mTipsURL:Ljava/lang/String;

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v8    # "url":Ljava/net/URL;
    .local v9, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 131
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 132
    sget v11, Lcom/xxGameAssistant/pao/MTApplication;->mConnectTimeout:I

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    sget v11, Lcom/xxGameAssistant/pao/MTApplication;->mReadTimeout:I

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 134
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 137
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_3

    .line 138
    const/4 v11, 0x0

    sput-object v11, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :goto_0
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 177
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 178
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    move-object v8, v9

    .line 180
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 171
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    const-wide/16 v11, 0x64

    :try_start_2
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 143
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    .local v1, "bufStr":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1000

    new-array v2, v11, [B

    .line 145
    .local v2, "buffer":[B
    const/4 v6, -0x1

    .local v6, "size":I
    const/4 v3, 0x0

    .line 146
    .local v3, "count":I
    :goto_2
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v11, -0x1

    if-ne v6, v11, :cond_6

    .line 149
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    sput-object v11, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;

    .line 152
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 153
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 154
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 157
    sget-object v11, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/xxGameAssistant/pao/MTApplication;->mTipsText:Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v11, :cond_4

    .line 158
    const/4 v7, 0x3

    .line 168
    :cond_4
    :goto_3
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 177
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 178
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_1

    .line 147
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_6
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 162
    .end local v1    # "bufStr":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "size":I
    :catch_1
    move-exception v4

    move-object v8, v9

    .line 163
    .end local v9    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/net/MalformedURLException;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :goto_5
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 177
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 178
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 171
    :cond_7
    const-wide/16 v11, 0x64

    :try_start_6
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 172
    :catch_2
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 164
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v4

    .line 165
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 168
    .end local v4    # "e":Ljava/io/IOException;
    :goto_7
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 177
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 178
    iget-object v11, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v11}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 171
    :cond_8
    const-wide/16 v11, 0x64

    :try_start_8
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 172
    :catch_4
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 171
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_9
    const-wide/16 v12, 0x64

    :try_start_9
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    .line 168
    :goto_8
    iget-object v12, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v12}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 177
    iget-object v12, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v12}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 178
    iget-object v12, p0, Lcom/xxGameAssistant/pao/MTApplication$MyThread;->this$0:Lcom/xxGameAssistant/pao/MTApplication;

    invoke-static {v12}, Lcom/xxGameAssistant/pao/MTApplication;->access$0(Lcom/xxGameAssistant/pao/MTApplication;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_a
    throw v11

    .line 172
    :catch_5
    move-exception v4

    .line 175
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 171
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "bufStr":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "size":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_b
    const-wide/16 v11, 0x64

    :try_start_a
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    .line 172
    :catch_6
    move-exception v4

    .line 175
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 167
    .end local v1    # "bufStr":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "size":I
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v11

    goto :goto_8

    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_8

    .line 164
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_7
    move-exception v4

    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_6

    .line 162
    :catch_8
    move-exception v4

    goto/16 :goto_4
.end method
