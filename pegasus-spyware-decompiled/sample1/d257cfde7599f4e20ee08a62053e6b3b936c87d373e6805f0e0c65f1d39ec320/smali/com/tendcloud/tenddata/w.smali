.class public Lcom/tendcloud/tenddata/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/h;
.implements Lcom/tendcloud/tenddata/l;


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/w;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/tendcloud/tenddata/w;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/w;->c:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tendcloud/tenddata/w;->d:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/w;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v0

    iget-wide v1, p0, Lcom/tendcloud/tenddata/w;->a:J

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/p;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/w;->b:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/w;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/w;->d:[B

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->b([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/w;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/p;)V
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/w;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/p;->a(J)Lcom/tendcloud/tenddata/p;

    iget v0, p0, Lcom/tendcloud/tenddata/w;->b:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(I)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/w;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/w;->d:[B

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a([B)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/w;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    return-void
.end method
