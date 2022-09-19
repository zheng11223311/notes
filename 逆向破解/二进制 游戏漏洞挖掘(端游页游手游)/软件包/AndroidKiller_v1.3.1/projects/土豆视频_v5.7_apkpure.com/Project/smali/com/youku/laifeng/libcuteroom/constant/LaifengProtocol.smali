.class public Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;
.super Ljava/lang/Object;
.source "LaifengProtocol.java"


# static fields
.field public static LAIFENG_HTTP:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_ACTIVITY_ATTENTION:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_ACTIVITY_HOME:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_ACTIVITY_PLAZA:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_ACTIVITY_TRAILERS:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_FANSWALL:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_JUMPTOROOM_INNER:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_JUMPTOROOM_OUTER:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_JUMPTOROOM_PARAMNAME_POS:Ljava/lang/String;

.field public static LAIFENG_PROTOCOL_JUMPTOROOM_PARAMVALE_PATRONSAINT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "lf://room/"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_JUMPTOROOM_INNER:Ljava/lang/String;

    .line 9
    const-string v0, "laifeng://room/"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_JUMPTOROOM_OUTER:Ljava/lang/String;

    .line 10
    const-string v0, "pos"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_JUMPTOROOM_PARAMNAME_POS:Ljava/lang/String;

    .line 11
    const-string v0, "patron_saint"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_JUMPTOROOM_PARAMVALE_PATRONSAINT:Ljava/lang/String;

    .line 15
    const-string v0, "lf://activity/home"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_ACTIVITY_HOME:Ljava/lang/String;

    .line 17
    const-string v0, "lf://activity/plaza"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_ACTIVITY_PLAZA:Ljava/lang/String;

    .line 19
    const-string v0, "lf://activity/trailers"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_ACTIVITY_TRAILERS:Ljava/lang/String;

    .line 21
    const-string v0, "lf://activity/attention"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_ACTIVITY_ATTENTION:Ljava/lang/String;

    .line 24
    const-string v0, "lf://fanswall/"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_PROTOCOL_FANSWALL:Ljava/lang/String;

    .line 27
    const-string v0, "http://"

    sput-object v0, Lcom/youku/laifeng/libcuteroom/constant/LaifengProtocol;->LAIFENG_HTTP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
