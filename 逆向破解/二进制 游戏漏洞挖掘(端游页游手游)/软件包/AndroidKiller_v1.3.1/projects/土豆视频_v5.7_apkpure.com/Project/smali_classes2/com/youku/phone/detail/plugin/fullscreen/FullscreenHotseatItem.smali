.class public Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
.super Landroid/widget/FrameLayout;
.source "FullscreenHotseatItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;,
        Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;
    }
.end annotation


# static fields
.field static final CLICK_FEEDBACK_DURATION:I = 0x3e8

.field static final CLICK_FEEDBACK_INTERVAL:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mBtn:Landroid/widget/Button;

.field private mRippleAnimStart:J

.field private mRippleFrameAnimating:Z

.field private mRipples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Landroid/widget/TextView;

.field public mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field toDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->toDelete:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->toDelete:Ljava/util/ArrayList;

    .line 87
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleFrameAnimating:Z

    if-eqz v5, :cond_3

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 149
    .local v2, "current":J
    iget-wide v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleAnimStart:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 150
    iput-wide v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleAnimStart:J

    .line 151
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;

    .line 155
    .local v4, "ripple":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;
    iget-wide v6, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->mAnimStart:J

    sub-long v6, v2, v6

    long-to-int v0, v6

    .line 156
    .local v0, "animDuration":I
    const/16 v5, 0x3e8

    if-lt v0, v5, :cond_1

    .line 157
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->toDelete:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-static {v4, v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;ILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 162
    .end local v0    # "animDuration":I
    .end local v4    # "ripple":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;
    :cond_2
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->toDelete:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->toDelete:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 164
    const-wide/16 v6, 0xa

    invoke-virtual {p0, v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->postInvalidateDelayed(J)V

    .line 166
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "current":J
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 208
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    .local v0, "tChildDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 212
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 171
    const v0, 0x7f0c0bd3

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0c0bd4

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    .line 173
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 128
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v0, v1, :cond_0

    .line 129
    if-eqz p2, :cond_0

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 115
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v0, v1, :cond_0

    .line 116
    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->startRippleFeedback()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->stopRippleFeedback()V

    goto :goto_0
.end method

.method public setTitleVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public setType(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;)V
    .locals 2
    .param p1, "type"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mType:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    .line 181
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206b2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u4e92\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u94fe\u63a5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_2
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u6295\u7968"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_3
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u770b\u70b9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_4
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 195
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u9676\u9676"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_5
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->SCREENSHOT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_6

    .line 197
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u622a\u56fe"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_6
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mBtn:Landroid/widget/Button;

    const v1, 0x7f0206b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u5f55\u5236"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    const-string v0, "\u5f55\u5236"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_0
    return-void
.end method

.method public startRippleFeedback()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleAnimStart:J

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleFrameAnimating:Z

    .line 101
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$RippleFrame;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->invalidate()V

    .line 103
    return-void
.end method

.method public stopRippleFeedback()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleFrameAnimating:Z

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRippleAnimStart:J

    .line 108
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->toDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    return-void
.end method
