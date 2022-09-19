.class Lcom/youku/widget/SearchFliterPopupWindow$1;
.super Ljava/lang/Object;
.source "SearchFliterPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SearchFliterPopupWindow;->initUGCfilterData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/SearchFliterPopupWindow;


# direct methods
.method constructor <init>(Lcom/youku/widget/SearchFliterPopupWindow;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/youku/widget/SearchFliterPopupWindow$1;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow$1;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v0}, Lcom/youku/widget/SearchFliterPopupWindow;->access$000(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 155
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow$1;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v0}, Lcom/youku/widget/SearchFliterPopupWindow;->access$100(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow$1;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v0}, Lcom/youku/widget/SearchFliterPopupWindow;->access$100(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x727273

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow$1;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v0}, Lcom/youku/widget/SearchFliterPopupWindow;->access$200(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/youku/widget/SearchFliterPopupWindow$1;->this$0:Lcom/youku/widget/SearchFliterPopupWindow;

    invoke-static {v0}, Lcom/youku/widget/SearchFliterPopupWindow;->access$200(Lcom/youku/widget/SearchFliterPopupWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    :cond_1
    return-void
.end method
