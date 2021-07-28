.class final Lcom/tendcloud/tenddata/g;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-static {p1}, Lcom/tendcloud/tenddata/TCAgent;->a(Landroid/os/Message;)V

    return-void
.end method
