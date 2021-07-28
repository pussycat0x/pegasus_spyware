.class public final Lcom/tendcloud/tenddata/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "GSM"

.field public static final b:Ljava/lang/String; = "CDMA"


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/v;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tendcloud/tenddata/v;->d:I

    iput v1, p0, Lcom/tendcloud/tenddata/v;->e:I

    return-void
.end method
