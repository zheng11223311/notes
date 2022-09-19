.class public Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "VoiceMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;,
        Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/VoiceMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/VoiceMessage;
.end annotation


# instance fields
.field animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field mCurrentMessage:Lio/rong/imlib/model/Message;

.field mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

.field private voiceInputOperationStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 47
    sget v0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_DEFAULT:I

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->voiceInputOperationStatus:I

    .line 52
    new-instance v0, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;

    invoke-direct {v0, p1}, Lio/rong/imkit/util/IVoiceHandler$VoiceHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    .line 53
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    new-instance v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$PlayListener;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;)V

    invoke-interface {v0, v1}, Lio/rong/imkit/util/IVoiceHandler;->setPlayListener(Lio/rong/imkit/util/IVoiceHandler$OnPlayListener;)V

    .line 54
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method private leftSet(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/message/VoiceMessage;)V
    .locals 4
    .param p1, "holder"    # Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    .param p2, "voice"    # Lio/rong/message/VoiceMessage;

    .prologue
    .line 206
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v1}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v1}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v2, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_voice_receive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :goto_0
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_bubble_left:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 214
    return-void

    .line 209
    :cond_1
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_an_voice_receive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 210
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private rightSet(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/message/VoiceMessage;)V
    .locals 4
    .param p1, "holder"    # Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    .param p2, "voice"    # Lio/rong/message/VoiceMessage;

    .prologue
    .line 217
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v1}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v1}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    :cond_0
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v2, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_voice_sent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :goto_0
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_bubble_right:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 226
    return-void

    .line 220
    :cond_1
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$drawable;->rc_an_voice_sent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 221
    .local v0, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 36
    check-cast p3, Lio/rong/message/VoiceMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/VoiceMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;

    .line 115
    .local v0, "holder":Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getDuration()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3c

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 116
    .local v1, "length":I
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v2, v3, :cond_0

    .line 118
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-direct {p0, v0, p3}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->rightSet(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/message/VoiceMessage;)V

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    :goto_1
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    invoke-direct {p0, v0, p3}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->leftSet(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/message/VoiceMessage;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .param p1, "x0"    # Lio/rong/imlib/model/MessageContent;

    .prologue
    .line 36
    check-cast p1, Lio/rong/message/VoiceMessage;

    .end local p1    # "x0":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->getContentSummary(Lio/rong/message/VoiceMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/VoiceMessage;)Landroid/text/Spannable;
    .locals 3
    .param p1, "data"    # Lio/rong/message/VoiceMessage;

    .prologue
    .line 230
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_voice:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    .local v0, "string":Landroid/text/SpannableString;
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_voice_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;)V

    .line 104
    .local v0, "holder":Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    .line 105
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    .line 106
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    .line 107
    sget v2, Lio/rong/imkit/R$id;->rc_voice_unread:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    return-object v1
.end method

.method public onEvent(Lio/rong/imkit/model/Event$VoiceInputOperationEvent;)V
    .locals 2
    .param p1, "event"    # Lio/rong/imkit/model/Event$VoiceInputOperationEvent;

    .prologue
    .line 235
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->getStatus()I

    move-result v0

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->voiceInputOperationStatus:I

    .line 236
    iget v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->voiceInputOperationStatus:I

    sget v1, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_INPUTING:I

    if-ne v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v0}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v0}, Lio/rong/imkit/util/IVoiceHandler;->stop()V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget v0, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_DEFAULT:I

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->voiceInputOperationStatus:I

    goto :goto_0
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 36
    check-cast p3, Lio/rong/message/VoiceMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/VoiceMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 138
    const-string v2, "Item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;

    .line 140
    .local v1, "holder":Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    iget v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->voiceInputOperationStatus:I

    sget v3, Lio/rong/imkit/model/Event$VoiceInputOperationEvent;->STATUS_INPUTING:I

    if-ne v2, v3, :cond_2

    .line 141
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v2, v3, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_an_voice_sent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 147
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    iget-object v2, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->stop()V

    .line 172
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_1
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_an_voice_receive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    goto :goto_0

    .line 153
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->stop()V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->getCurrentPlayUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 161
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-interface {v2}, Lio/rong/imkit/util/IVoiceHandler;->stop()V

    .line 164
    :cond_4
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v2, v3, :cond_5

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_an_voice_sent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 168
    :goto_2
    iget-object v2, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v2, v1, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mVoiceHandler:Lio/rong/imkit/util/IVoiceHandler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/rong/imkit/util/IVoiceHandler;->play(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->mCurrentMessage:Lio/rong/imlib/model/Message;

    goto :goto_1

    .line 167
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$drawable;->rc_an_voice_receive:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_2
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lio/rong/imlib/model/MessageContent;
    .param p4, "x3"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 36
    check-cast p3, Lio/rong/message/VoiceMessage;

    .end local p3    # "x2":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "content"    # Lio/rong/message/VoiceMessage;
    .param p4, "message"    # Lio/rong/imkit/model/UIMessage;

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v2

    .line 180
    .local v2, "key":Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getPublicServiceInfoCache()Lio/rong/imkit/cache/RongCache;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/cache/RongCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceProfile;

    .line 181
    .local v0, "info":Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .end local v0    # "info":Lio/rong/imlib/model/PublicServiceProfile;
    .end local v2    # "key":Lio/rong/imkit/model/ConversationKey;
    :cond_1
    :goto_0
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 192
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 203
    return-void

    .line 184
    .end local v1    # "items":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 185
    .local v4, "userInfo":Lio/rong/imlib/model/UserInfo;
    if-nez v4, :cond_3

    .line 186
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getUserInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 187
    :cond_3
    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
