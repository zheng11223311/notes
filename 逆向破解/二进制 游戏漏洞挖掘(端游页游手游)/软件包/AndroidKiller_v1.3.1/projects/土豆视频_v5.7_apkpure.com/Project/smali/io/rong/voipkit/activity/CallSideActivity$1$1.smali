.class Lio/rong/voipkit/activity/CallSideActivity$1$1;
.super Ljava/lang/Object;
.source "CallSideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/voipkit/activity/CallSideActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/voipkit/activity/CallSideActivity$1;


# direct methods
.method constructor <init>(Lio/rong/voipkit/activity/CallSideActivity$1;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lio/rong/voipkit/activity/CallSideActivity$1$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lio/rong/voipkit/activity/CallSideActivity$1$1;->this$1:Lio/rong/voipkit/activity/CallSideActivity$1;

    iget-object v0, v0, Lio/rong/voipkit/activity/CallSideActivity$1;->this$0:Lio/rong/voipkit/activity/CallSideActivity;

    invoke-virtual {v0}, Lio/rong/voipkit/activity/CallSideActivity;->finish()V

    .line 65
    return-void
.end method
