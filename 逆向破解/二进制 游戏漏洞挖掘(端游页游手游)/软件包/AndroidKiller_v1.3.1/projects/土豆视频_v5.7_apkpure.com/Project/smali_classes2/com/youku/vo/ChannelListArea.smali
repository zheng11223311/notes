.class public Lcom/youku/vo/ChannelListArea;
.super Ljava/lang/Object;
.source "ChannelListArea.java"


# instance fields
.field public channel_list_icon:Ljava/lang/String;

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListItem;",
            ">;"
        }
    .end annotation
.end field

.field public show_line:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
