.class public Lcom/youku/vo/ChannelFliterSortItemTudouBean;
.super Ljava/lang/Object;
.source "ChannelFliterSortItemTudouBean.java"


# instance fields
.field public isSelected:Z

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    .line 13
    iput-object p1, p0, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->value:Ljava/lang/String;

    .line 15
    return-void
.end method
