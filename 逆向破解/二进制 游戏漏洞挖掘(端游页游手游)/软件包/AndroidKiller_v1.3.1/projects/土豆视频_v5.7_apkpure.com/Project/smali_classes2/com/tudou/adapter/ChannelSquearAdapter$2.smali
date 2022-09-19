.class Lcom/tudou/adapter/ChannelSquearAdapter$2;
.super Ljava/lang/Object;
.source "ChannelSquearAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ChannelSquearAdapter;->setViewHolderData(Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;ILandroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ChannelSquearAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelSquearAdapter;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$2;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u8ba2\u9605progeress bar"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
