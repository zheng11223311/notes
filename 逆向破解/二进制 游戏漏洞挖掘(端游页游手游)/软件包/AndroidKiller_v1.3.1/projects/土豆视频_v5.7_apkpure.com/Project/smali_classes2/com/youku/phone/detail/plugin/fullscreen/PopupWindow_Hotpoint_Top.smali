.class public Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;
.super Ljava/lang/Object;
.source "PopupWindow_Hotpoint_Top.java"


# instance fields
.field private final SHOW_Bottom:I

.field private con:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private imageview_pointImg:Landroid/widget/ImageView;

.field private layout:Landroid/widget/LinearLayout;

.field private mainHandler:Landroid/os/Handler;

.field private parrentView:Landroid/view/View;

.field private point:Lcom/youku/player/goplay/Point;

.field pointX:I

.field pointY:I

.field private pw:Landroid/widget/PopupWindow;

.field private seekBar_progress:Landroid/widget/SeekBar;

.field private textview_pointContent:Landroid/widget/TextView;

.field private textview_pointTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILcom/youku/player/goplay/Point;Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "mCon"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "point"    # Lcom/youku/player/goplay/Point;
    .param p6, "seekbar_progress"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v5, -0x2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v3, 0x65

    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->SHOW_Bottom:I

    .line 79
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->con:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->mainHandler:Landroid/os/Handler;

    .line 81
    iput-object p6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->seekBar_progress:Landroid/widget/SeekBar;

    .line 82
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->point:Lcom/youku/player/goplay/Point;

    .line 83
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->con:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 86
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030251

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v5, v5, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    .line 90
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 91
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->con:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0206d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-direct {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->findView(Landroid/view/View;)V

    .line 95
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->init()V

    .line 96
    iput p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pointX:I

    .line 97
    iput p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pointY:I

    .line 98
    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)V

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->handler:Landroid/os/Handler;

    .line 113
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->parrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Lcom/youku/player/goplay/Point;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->point:Lcom/youku/player/goplay/Point;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    const v0, 0x7f0c02ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->layout:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f0c0b29

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->textview_pointContent:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0c0b2a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->textview_pointTime:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0c0b28

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->imageview_pointImg:Landroid/widget/ImageView;

    .line 120
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 10
    .param p0, "time"    # J

    .prologue
    const-wide/16 v8, 0x3c

    const/4 v6, 0x1

    .line 153
    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v4, p0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "minute":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long v4, p0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "second":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->point:Lcom/youku/player/goplay/Point;

    iget-wide v2, v1, Lcom/youku/player/goplay/Point;->start:D

    double-to-long v2, v2

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "formatTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->textview_pointContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->point:Lcom/youku/player/goplay/Point;

    iget-object v2, v2, Lcom/youku/player/goplay/Point;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->textview_pointTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->layout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 2

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 185
    :catch_0
    move-exception v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/view/View;)V
    .locals 5
    .param p1, "RelateView"    # Landroid/view/View;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->parrentView:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pw:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->parrentView:Landroid/view/View;

    const/4 v2, 0x3

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pointX:I

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->pointY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    return-void
.end method
