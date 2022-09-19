.class public final Lcom/youku/player/ad/AdVender;
.super Ljava/lang/Object;
.source "AdVender.java"


# static fields
.field public static final ADMOB:I = 0x5

.field public static final ADSAGE:I = 0x3

.field public static final DOMOB:I = 0x4

.field public static final Domob_ID:Ljava/lang/String; = "56OJw7GouNKXKEMKtV"

.field public static final Domob_PauseAd_ID:Ljava/lang/String; = "16TLucXvAp-nkNUfF3xfLH3i"

.field public static final Domob_PreAd_ID:Ljava/lang/String; = "16TLucXvAp-nkNUfFcC3Tkoz"

.field public static final INMOBI:I = 0x2

.field public static final Inmobi_ID:Ljava/lang/String; = "85fd3a8edeb944e49f01e684caf577bd"

.field public static final Inmobi_Interstitial_ID:Ljava/lang/String; = "65f2c940130e4c689847604fc1dafe3e"

.field public static MobiSage_ID:Ljava/lang/String; = null

.field public static final OFFLINE_AD:I = 0x6

.field public static final PUNCHBOX:I = 0x1

.field public static final PunchBox_ID:Ljava/lang/String; = "100054-3B4B3C-D869-848A-AA147BF7BFDE"

.field public static final YOUKU:I = 0x0

.field public static final YOUKU_HTML:I = 0x63


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "942fcb189890434692f49e4f51e5415e"

    sput-object v0, Lcom/youku/player/ad/AdVender;->MobiSage_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
