.class public Lcom/youku/vo/ChannelListLabels;
.super Ljava/lang/Object;
.source "ChannelListLabels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public label_title:Ljava/lang/String;

.field public skip_inf:Lcom/youku/vo/SkipInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/youku/vo/SkipInfo;)V
    .locals 0
    .param p1, "label_title"    # Ljava/lang/String;
    .param p2, "skip_inf"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/youku/vo/ChannelListLabels;->label_title:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/youku/vo/ChannelListLabels;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 14
    return-void
.end method
