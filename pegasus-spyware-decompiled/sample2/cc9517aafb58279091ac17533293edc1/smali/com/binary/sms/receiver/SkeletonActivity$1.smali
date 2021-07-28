.class Lcom/binary/sms/receiver/SkeletonActivity$1;
.super Ljava/lang/Object;
.source "SkeletonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/binary/sms/receiver/SkeletonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/binary/sms/receiver/SkeletonActivity;


# direct methods
.method constructor <init>(Lcom/binary/sms/receiver/SkeletonActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$1;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/binary/sms/receiver/SkeletonActivity$1;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-virtual {v0}, Lcom/binary/sms/receiver/SkeletonActivity;->finish()V

    .line 1414
    return-void
.end method
