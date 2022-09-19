.class Lcom/tudou/android/chat/ChatFragment$9;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatFragment;->onSendBlankMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment$9;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 716
    const-string v0, "\u804a\u5929\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 717
    return-void
.end method
