.class Lcom/mobisage/android/MobiSageActivity$2;
.super Ljava/lang/Object;
.source "MobiSageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 650
    iput-object p1, p0, Lcom/mobisage/android/MobiSageActivity$2;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$2;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$800(Lcom/mobisage/android/MobiSageActivity;)Lcom/mobisage/android/MobiSageVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->stopPlayback()V

    .line 656
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$2;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageActivity;->access$800(Lcom/mobisage/android/MobiSageActivity;)Lcom/mobisage/android/MobiSageVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->clearFocus()V

    .line 657
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity$2;->this$0:Lcom/mobisage/android/MobiSageActivity;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageActivity;->finish()V

    .line 658
    return-void
.end method
