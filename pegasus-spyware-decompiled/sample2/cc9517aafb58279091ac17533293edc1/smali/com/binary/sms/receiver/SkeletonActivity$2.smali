.class Lcom/binary/sms/receiver/SkeletonActivity$2;
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
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$2;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1426
    :try_start_0
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity$2;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-static {v1}, Lcom/binary/sms/receiver/SkeletonActivity;->access$0(Lcom/binary/sms/receiver/SkeletonActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_0
    return-void

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mClearListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/binary/sms/receiver/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
