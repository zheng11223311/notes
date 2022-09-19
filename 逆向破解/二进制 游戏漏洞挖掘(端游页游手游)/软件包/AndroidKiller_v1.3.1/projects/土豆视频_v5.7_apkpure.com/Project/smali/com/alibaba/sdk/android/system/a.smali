.class public final Lcom/alibaba/sdk/android/system/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/alibaba/sdk/android/security/AccessController;

.field public static b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

.field public static c:Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

.field public static d:Lcom/alibaba/sdk/android/security/SecurityService;

.field public static e:Lcom/alibaba/sdk/android/ut/UserTrackerService;

.field public static f:Lcom/alibaba/sdk/android/security/CertificateService;

.field public static g:Lcom/alibaba/sdk/android/app/AppContext;

.field public static h:Lcom/alibaba/sdk/android/executor/ExecutorService;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:[Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "file:///android_asset/ali_sdk_system/view_no_right.html"

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->m:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/alibaba/sdk/android/system/a;->n:J

    return-void
.end method
