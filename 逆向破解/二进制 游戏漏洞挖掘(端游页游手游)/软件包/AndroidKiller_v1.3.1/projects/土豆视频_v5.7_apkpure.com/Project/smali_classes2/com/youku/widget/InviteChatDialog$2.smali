.class Lcom/youku/widget/InviteChatDialog$2;
.super Ljava/lang/Object;
.source "InviteChatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/InviteChatDialog;->eventView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/InviteChatDialog;


# direct methods
.method constructor <init>(Lcom/youku/widget/InviteChatDialog;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/youku/widget/InviteChatDialog$2;->this$0:Lcom/youku/widget/InviteChatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/widget/InviteChatDialog$2;->this$0:Lcom/youku/widget/InviteChatDialog;

    invoke-static {v0}, Lcom/youku/widget/InviteChatDialog;->access$100(Lcom/youku/widget/InviteChatDialog;)Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/youku/widget/InviteChatDialog$2;->this$0:Lcom/youku/widget/InviteChatDialog;

    invoke-static {v0}, Lcom/youku/widget/InviteChatDialog;->access$100(Lcom/youku/widget/InviteChatDialog;)Lcom/youku/widget/InviteChatDialog$ButOnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/InviteChatDialog$ButOnClickListener;->onClick()V

    .line 108
    :cond_0
    return-void
.end method
