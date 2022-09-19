.class Lcom/youku/gamecenter/GameCenterDialogActivity$1;
.super Ljava/lang/Object;
.source "GameCenterDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameCenterDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameCenterDialogActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$1;->this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterDialogActivity$1;->this$0:Lcom/youku/gamecenter/GameCenterDialogActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterDialogActivity;->finish()V

    .line 38
    return-void
.end method
