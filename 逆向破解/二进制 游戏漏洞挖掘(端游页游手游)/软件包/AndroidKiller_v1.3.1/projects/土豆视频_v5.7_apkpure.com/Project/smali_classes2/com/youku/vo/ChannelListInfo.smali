.class public Lcom/youku/vo/ChannelListInfo;
.super Ljava/lang/Object;
.source "ChannelListInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channel_id:Ljava/lang/String;

.field public channel_title:Ljava/lang/String;

.field public isAdd:Z

.field public label_title:Ljava/lang/String;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public normal_icon:Ljava/lang/String;

.field public selected_icon:Ljava/lang/String;

.field public shortcut_icon:Ljava/lang/String;

.field public skip_inf:Lcom/youku/vo/SkipInfo;

.field public skip_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    return-void
.end method
