.class Lcom/binary/sms/receiver/SkeletonActivity$5;
.super Ljava/lang/Object;
.source "SkeletonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binary/sms/receiver/SkeletonActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$5;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity$5;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-virtual {v1}, Lcom/binary/sms/receiver/SkeletonActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/binary/sms/receiver/SkeletonActivity$5;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-virtual {v1}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Your sms has failed..."

    .line 173
    const/4 v3, 0x1

    .line 172
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 174
    const-string v1, "MyWap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendSmsByManager exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
