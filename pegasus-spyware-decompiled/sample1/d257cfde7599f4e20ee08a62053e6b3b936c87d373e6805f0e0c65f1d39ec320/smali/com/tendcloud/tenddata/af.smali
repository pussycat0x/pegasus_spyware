.class public Lcom/tendcloud/tenddata/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tendcloud/tenddata/h;
.implements Lcom/tendcloud/tenddata/l;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/af;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tendcloud/tenddata/af;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tendcloud/tenddata/af;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tendcloud/tenddata/af;->c:I

    invoke-static {v1}, Lcom/tendcloud/tenddata/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/tendcloud/tenddata/p;)V
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->b(I)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/p;

    iget v0, p0, Lcom/tendcloud/tenddata/af;->c:I

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(I)Lcom/tendcloud/tenddata/p;

    iget-wide v0, p0, Lcom/tendcloud/tenddata/af;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/tendcloud/tenddata/p;->a(J)Lcom/tendcloud/tenddata/p;

    iget-object v0, p0, Lcom/tendcloud/tenddata/af;->e:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/p;->a(Ljava/util/Map;)Lcom/tendcloud/tenddata/p;

    return-void
.end method
