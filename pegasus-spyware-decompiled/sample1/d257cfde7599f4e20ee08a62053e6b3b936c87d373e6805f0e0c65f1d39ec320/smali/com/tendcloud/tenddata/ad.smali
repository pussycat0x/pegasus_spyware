.class final Lcom/tendcloud/tenddata/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput p1, p0, Lcom/tendcloud/tenddata/ad;->a:I

    iput-object p2, p0, Lcom/tendcloud/tenddata/ad;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/ad;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/ad;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->r()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/tendcloud/tenddata/ad;->a:I

    iget-object v2, p0, Lcom/tendcloud/tenddata/ad;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/c;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
