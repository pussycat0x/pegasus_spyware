.class public Lcom/tendcloud/tenddata/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/h;


# instance fields
.field public a:I

.field public b:Lcom/tendcloud/tenddata/b;

.field public c:Lcom/tendcloud/tenddata/m;

.field public d:Lcom/tendcloud/tenddata/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tendcloud/tenddata/ag;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/p;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    iget v0, p0, Lcom/tendcloud/tenddata/ag;->a:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(I)Lcom/tendcloud/tenddata/p;

    iget v0, p0, Lcom/tendcloud/tenddata/ag;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown TMessageType"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->c:Lcom/tendcloud/tenddata/m;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Lcom/tendcloud/tenddata/h;)Lcom/tendcloud/tenddata/p;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->b:Lcom/tendcloud/tenddata/b;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Lcom/tendcloud/tenddata/h;)Lcom/tendcloud/tenddata/p;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->d:Lcom/tendcloud/tenddata/w;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Lcom/tendcloud/tenddata/h;)Lcom/tendcloud/tenddata/p;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
