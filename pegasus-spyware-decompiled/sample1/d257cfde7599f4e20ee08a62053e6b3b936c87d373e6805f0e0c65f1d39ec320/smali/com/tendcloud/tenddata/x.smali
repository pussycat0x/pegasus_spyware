.class final Lcom/tendcloud/tenddata/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tendcloud/tenddata/x;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/x;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/a;-><init>()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/x;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tendcloud/tenddata/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/x;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/tendcloud/tenddata/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/x;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/tendcloud/tenddata/a;->g:Ljava/util/Map;

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
