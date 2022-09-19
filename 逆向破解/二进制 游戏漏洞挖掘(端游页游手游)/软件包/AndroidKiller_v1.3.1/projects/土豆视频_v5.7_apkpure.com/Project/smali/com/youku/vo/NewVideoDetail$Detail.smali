.class public Lcom/youku/vo/NewVideoDetail$Detail;
.super Ljava/lang/Object;
.source "NewVideoDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/NewVideoDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/NewVideoDetail$Detail$Actor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77fbce2ecbd283b2L


# instance fields
.field public actors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/NewVideoDetail$Detail$Actor;",
            ">;"
        }
    .end annotation
.end field

.field public aid:Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public authors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cats:Ljava/lang/String;

.field public channel_pic:Ljava/lang/String;

.field public characters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cid:I

.field public completed:I

.field public desc:Ljava/lang/String;

.field public director:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public duration:Ljava/lang/String;

.field public episode_total:I

.field public exclusive_logo:I

.field public extFlag:I

.field public format_flag:I

.field public iid:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public img_cover:Ljava/lang/String;

.field public img_default:Ljava/lang/String;

.field public img_hd:Ljava/lang/String;

.field public img_type:Ljava/lang/String;

.field public isVuser:Z

.field public is_trailer:I

.field public item_img:Ljava/lang/String;

.field public limit:I

.field public needMoney:I

.field public plid:Ljava/lang/String;

.field public publicType:Ljava/lang/String;

.field public releasedata:Ljava/lang/String;

.field public reputation:I

.field public short_desc:Ljava/lang/String;

.field public showdate:I

.field public source:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public stripe_bottom:Ljava/lang/String;

.field public subed_num:I

.field public tag_type:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/NewVideoDetail;

.field public tips:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public total_comment:I

.field public total_down:I

.field public total_fav:I

.field public total_up:I

.field public total_vv:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_desc:Ljava/lang/String;

.field public user_is_official:Z

.field public user_play_times:Ljava/lang/String;

.field public userid:I

.field public username:Ljava/lang/String;

.field public videosize:Ljava/lang/String;

.field public voiceActors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/youku/vo/NewVideoDetail;)V
    .locals 1

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/vo/NewVideoDetail$Detail;->this$0:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->characters:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->categories:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->director:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->voiceActors:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->actors:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/NewVideoDetail$Detail;->authors:Ljava/util/ArrayList;

    .line 112
    return-void
.end method
