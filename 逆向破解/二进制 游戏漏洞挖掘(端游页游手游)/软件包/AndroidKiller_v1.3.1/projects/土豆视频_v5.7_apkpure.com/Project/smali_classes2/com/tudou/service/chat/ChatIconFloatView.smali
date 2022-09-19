.class public Lcom/tudou/service/chat/ChatIconFloatView;
.super Ljava/lang/Object;
.source "ChatIconFloatView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public detailActivity:Lcom/tudou/ui/activity/DetailActivity;

.field private mChatInfo:Lcom/youku/vo/ChatDialogInfo;

.field private mContext:Landroid/content/Context;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mUpdataView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private showRedDot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V
    .locals 1
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "chat_icon"

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->showRedDot:Z

    .line 39
    iput-object p1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 41
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    .line 42
    invoke-direct {p0}, Lcom/tudou/service/chat/ChatIconFloatView;->initView()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/chat/ChatIconFloatView;)Lcom/youku/vo/ChatDialogInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatIconFloatView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/service/chat/ChatIconFloatView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatIconFloatView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/service/chat/ChatIconFloatView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/service/chat/ChatIconFloatView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    return-object v0
.end method

.method private initView()V
    .locals 8

    .prologue
    const/high16 v7, 0x428c0000    # 70.0f

    .line 46
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mContext:Landroid/content/Context;

    const v5, 0x7f030085

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    new-instance v5, Lcom/tudou/service/chat/ChatIconFloatView$1;

    invoke-direct {v5, p0}, Lcom/tudou/service/chat/ChatIconFloatView$1;-><init>(Lcom/tudou/service/chat/ChatIconFloatView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    const v5, 0x7f0c02ba

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    .line 73
    iget-boolean v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->showRedDot:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :goto_0
    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    .line 79
    .local v1, "w":I
    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    .line 81
    .local v2, "h":I
    const/16 v4, 0x8

    .line 84
    .local v4, "flags":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_1

    .line 85
    const/16 v3, 0x7d5

    .line 88
    .local v3, "type":I
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 89
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x55

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    return-void

    .line 76
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "type":I
    .end local v4    # "flags":I
    :cond_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    .restart local v1    # "w":I
    .restart local v2    # "h":I
    .restart local v4    # "flags":I
    :cond_1
    const/16 v3, 0x7d2

    .restart local v3    # "type":I
    goto :goto_1
.end method


# virtual methods
.method public goneRedDot()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "chatFloatView"

    const-string v1, "goneRedDot"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->showRedDot:Z

    .line 135
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public removeView()V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 158
    const-string v0, "chat_icon"

    const-string v1, "remove"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDetailActivity(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->detailActivity:Lcom/tudou/ui/activity/DetailActivity;

    .line 165
    return-void
.end method

.method public setVideoPoint(Ljava/lang/String;I)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "point"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    iput-object p1, v0, Lcom/youku/vo/ChatDialogInfo;->videoId:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    iput p2, v0, Lcom/youku/vo/ChatDialogInfo;->point:I

    .line 172
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/tudou/service/chat/ChatIconFloatView;->initView()V

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const-string v0, "chat_icon"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public showRedDot()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "chatFloatView"

    const-string v1, "showRedDot"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->showRedDot:Z

    .line 128
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mUpdataView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public updataChatInfo(Lcom/youku/vo/ChatDialogInfo;)V
    .locals 3
    .param p1, "chatInfo"    # Lcom/youku/vo/ChatDialogInfo;

    .prologue
    .line 93
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iput-object p1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mChatInfo:Lcom/youku/vo/ChatDialogInfo;

    .line 96
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public updataViewLocation(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 121
    iget-object v0, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updataViewLocation(Z)V
    .locals 4
    .param p1, "isHomePagActivity"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    .line 108
    .local v0, "y":I
    if-eqz p1, :cond_2

    .line 109
    const/high16 v1, 0x42480000    # 50.0f

    :try_start_0
    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    iget-object v1, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/service/chat/ChatIconFloatView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method
