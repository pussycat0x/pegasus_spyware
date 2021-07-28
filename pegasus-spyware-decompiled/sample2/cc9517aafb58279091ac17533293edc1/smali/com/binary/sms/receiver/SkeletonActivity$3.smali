.class Lcom/binary/sms/receiver/SkeletonActivity$3;
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
    iput-object p1, p0, Lcom/binary/sms/receiver/SkeletonActivity$3;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 144
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$3;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/binary/sms/receiver/SkeletonActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/binary/sms/receiver/SkeletonActivity$3;->this$0:Lcom/binary/sms/receiver/SkeletonActivity;

    invoke-virtual {v2}, Lcom/binary/sms/receiver/SkeletonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Your sms has failed..."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 149
    const-string v2, "MyWap"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendSmsByManager exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
