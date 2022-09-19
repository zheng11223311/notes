.class Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;
.super Ljava/lang/Object;
.source "ListenClipboardService.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/chat/ListenClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatClipboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ListenClipboardService;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ListenClipboardService;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tudou/service/chat/ListenClipboardService$ChatClipboardListener;->this$0:Lcom/tudou/service/chat/ListenClipboardService;

    invoke-static {v0}, Lcom/tudou/service/chat/ListenClipboardService;->access$200(Lcom/tudou/service/chat/ListenClipboardService;)V

    .line 182
    return-void
.end method
