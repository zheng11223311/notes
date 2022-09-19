.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$2;
.super Ljava/lang/Object;
.source "FullScreenFragmentVideoList.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 141
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 145
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 146
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 147
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVideoList;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, "child":Landroid/widget/TextView;
    if-ne v2, p1, :cond_0

    .line 149
    const v3, 0x7f0201b4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    const-string v3, "#FF6600"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 153
    const-string v3, "#C8CCCCCC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 156
    .end local v0    # "child":Landroid/widget/TextView;
    :cond_1
    return-void
.end method
