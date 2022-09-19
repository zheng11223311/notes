.class Lcom/tudou/android/chat/ChatJoinedView$1;
.super Ljava/lang/Object;
.source "ChatJoinedView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatJoinedView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatJoinedView;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatJoinedView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tudou/android/chat/ChatJoinedView$1;->this$0:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/16 v2, 0x8

    .line 57
    sub-int v0, p6, p5

    if-le v0, v2, :cond_0

    .line 67
    .end local p4    # "dest":Landroid/text/Spanned;
    :goto_0
    return-object p4

    .line 60
    .restart local p4    # "dest":Landroid/text/Spanned;
    :cond_0
    if-ne p6, p5, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-le v0, v2, :cond_1

    .line 61
    const-string p4, ""

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/tudou/android/chat/ChatJoinedView$1;->this$0:Lcom/tudou/android/chat/ChatJoinedView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/android/chat/ChatJoinedView;->checkText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p4, p1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    const-string v0, "\u623f\u95f4\u53f7\u53ea\u80fd\u662f\u5b57\u6bcd\u6216\u8005\u6570\u5b57"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 67
    const-string p4, ""

    goto :goto_0
.end method
