.class Lcom/mobisage/android/MobiSageActivity$1;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageActivity;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageActivity;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$1;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$1;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$600(Lcom/mobisage/android/MobiSageActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$1;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$600(Lcom/mobisage/android/MobiSageActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity$1;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v2}, Lcom/mobisage/android/MobiSageActivity;->access$700(Lcom/mobisage/android/MobiSageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    return-void
.end method
