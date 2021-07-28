.class final Lcom/tendcloud/tenddata/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/TCAgent;->c(J)V

    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/TCAgent;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tendcloud/tenddata/u;->u()[[Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TCAgent;->f:[[Ljava/lang/Long;

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TCAgent;->b(I)I

    const/4 v0, 0x7

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->a(IJ)V

    return-void
.end method
