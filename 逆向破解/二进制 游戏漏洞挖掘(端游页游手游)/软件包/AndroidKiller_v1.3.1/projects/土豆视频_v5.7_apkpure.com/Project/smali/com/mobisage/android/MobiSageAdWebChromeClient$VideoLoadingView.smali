.class Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;
.super Landroid/widget/LinearLayout;
.source "MobiSageAdWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageAdWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoLoadingView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdWebChromeClient;


# direct methods
.method public constructor <init>(Lcom/mobisage/android/MobiSageAdWebChromeClient;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 133
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;->this$0:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    .line 134
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;->setOrientation(I)V

    .line 136
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-direct {v1, p2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;->addView(Landroid/view/View;)V

    .line 144
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v2, "txtView":Landroid/widget/TextView;
    const/16 v3, 0xa

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 146
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    const-string/jumbo v3, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method
