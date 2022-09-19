.class public Lcom/alipay/android/app/pay/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Ljava/lang/String; = null

.field private static C:Ljava/lang/String; = null

.field private static D:Ljava/lang/String; = null

.field public static final a:Ljava/lang/String; = "global_settings"

.field public static final b:Ljava/lang/String; = "trideskey"

.field public static final c:Ljava/lang/String; = "SPSafePay"

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:Z

.field public static h:Z

.field public static i:I

.field public static j:I

.field public static k:Ljava/lang/String;

.field public static l:Z

.field public static m:Z

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "com.alipay.android.app"

    sput-object v0, Lcom/alipay/android/app/pay/b;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 169
    invoke-static {p0}, Lcom/alipay/android/app/pay/b;->b(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 75
    .line 77
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    sget-object v1, Lcom/alipay/android/app/pay/b;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    const-string v1, "http_connection_timeout"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->v:Ljava/lang/String;

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/alipay/android/app/pay/b;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    :cond_2
    const-string v1, "http_so_timeout"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->w:Ljava/lang/String;

    .line 89
    :cond_3
    if-eqz p1, :cond_4

    sget-object v1, Lcom/alipay/android/app/pay/b;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    :cond_4
    const-string v1, "http_socket_buffer_size"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->x:Ljava/lang/String;

    .line 94
    :cond_5
    if-eqz p1, :cond_6

    sget-object v1, Lcom/alipay/android/app/pay/b;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    :cond_6
    const-string v1, "debug"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->y:Ljava/lang/String;

    .line 98
    :cond_7
    if-eqz p1, :cond_8

    sget-object v1, Lcom/alipay/android/app/pay/b;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 99
    :cond_8
    const-string/jumbo v1, "tid_count"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->A:Ljava/lang/String;

    .line 102
    :cond_9
    if-eqz p1, :cond_a

    sget-object v1, Lcom/alipay/android/app/pay/b;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 103
    :cond_a
    const-string/jumbo v1, "rsa_get_count"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->B:Ljava/lang/String;

    .line 106
    :cond_b
    if-eqz p1, :cond_c

    sget-object v1, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 107
    :cond_c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "trideskey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 111
    sput-object v2, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    .line 117
    :goto_0
    const-string v1, "msp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RSA_PUBLIC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_d
    if-eqz p1, :cond_e

    sget-object v1, Lcom/alipay/android/app/pay/b;->C:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 121
    :cond_e
    const-string v1, "draw_row_frame"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->C:Ljava/lang/String;

    .line 124
    :cond_f
    if-eqz p1, :cond_10

    sget-object v1, Lcom/alipay/android/app/pay/b;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 125
    :cond_10
    const-string v1, "draw_column_frame"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->D:Ljava/lang/String;

    .line 129
    :cond_11
    if-eqz p1, :cond_12

    sget-object v1, Lcom/alipay/android/app/pay/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 130
    :cond_12
    const-string v1, "monitor_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->n:Ljava/lang/String;

    .line 133
    :cond_13
    if-eqz p1, :cond_14

    sget-object v1, Lcom/alipay/android/app/pay/b;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 134
    :cond_14
    const-string v1, "default_server_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->p:Ljava/lang/String;

    .line 138
    :cond_15
    if-eqz p1, :cond_16

    sget-object v1, Lcom/alipay/android/app/pay/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 139
    :cond_16
    const-string v1, "namespace"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->q:Ljava/lang/String;

    .line 142
    :cond_17
    if-eqz p1, :cond_18

    sget-object v1, Lcom/alipay/android/app/pay/b;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 143
    :cond_18
    const-string v1, "api_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->r:Ljava/lang/String;

    .line 146
    :cond_19
    if-eqz p1, :cond_1a

    sget-object v1, Lcom/alipay/android/app/pay/b;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 147
    :cond_1a
    const-string v1, "api_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/b;->s:Ljava/lang/String;

    .line 150
    :cond_1b
    if-eqz p1, :cond_1c

    sget-object v1, Lcom/alipay/android/app/pay/b;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 151
    :cond_1c
    const-string/jumbo v1, "sid"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/b;->t:Ljava/lang/String;

    .line 154
    :cond_1d
    if-eqz p1, :cond_1e

    sget-object v0, Lcom/alipay/android/app/pay/b;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 155
    :cond_1e
    const-string v0, "mini_env_pre"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/b;->z:Ljava/lang/String;

    .line 159
    :cond_1f
    if-eqz p1, :cond_20

    sget-object v0, Lcom/alipay/android/app/pay/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 160
    :cond_20
    const-string v0, "mini_http_url"

    invoke-static {v0}, Lj/i;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/b;->o:Ljava/lang/String;

    .line 166
    :cond_21
    :goto_1
    return-void

    .line 113
    :cond_22
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    .line 114
    const-string/jumbo v3, "rsa_public"

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "trideskey"

    sget-object v3, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v1, 0x4e20

    const/4 v2, 0x0

    .line 174
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/pay/b;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/b;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/pay/b;->w:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/b;->e:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :goto_1
    :try_start_2
    sget-object v0, Lcom/alipay/android/app/pay/b;->x:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/b;->f:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    :goto_2
    :try_start_3
    sget-object v0, Lcom/alipay/android/app/pay/b;->y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/b;->g:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    :goto_3
    :try_start_4
    sget-object v0, Lcom/alipay/android/app/pay/b;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/b;->h:Z

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GlobalConstant]Boolean.parseBoolean(PRE_TEXT) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/alipay/android/app/pay/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/h;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 209
    :goto_4
    :try_start_5
    sget-object v0, Lcom/alipay/android/app/pay/b;->A:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/b;->i:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 215
    :goto_5
    :try_start_6
    sget-object v0, Lcom/alipay/android/app/pay/b;->B:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/b;->j:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 221
    :goto_6
    :try_start_7
    sget-object v0, Lcom/alipay/android/app/pay/b;->C:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/b;->l:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 227
    :goto_7
    :try_start_8
    sget-object v0, Lcom/alipay/android/app/pay/b;->D:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/b;->m:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 232
    :goto_8
    sget-object v0, Lcom/alipay/android/app/pay/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "http://mclient.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/b;->n:Ljava/lang/String;

    .line 236
    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const-string v0, "http://mclient.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/b;->o:Ljava/lang/String;

    .line 240
    :cond_1
    sget-object v0, Lcom/alipay/android/app/pay/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "RELEASE"

    sput-object v0, Lcom/alipay/android/app/pay/b;->p:Ljava/lang/String;

    .line 244
    :cond_2
    sget-object v0, Lcom/alipay/android/app/pay/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    const-string v0, "com.alipay.mobilecashier"

    sput-object v0, Lcom/alipay/android/app/pay/b;->q:Ljava/lang/String;

    .line 248
    :cond_3
    sget-object v0, Lcom/alipay/android/app/pay/b;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    const-string v0, "main"

    sput-object v0, Lcom/alipay/android/app/pay/b;->r:Ljava/lang/String;

    .line 252
    :cond_4
    sget-object v0, Lcom/alipay/android/app/pay/b;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    const-string v0, "1.0.0"

    sput-object v0, Lcom/alipay/android/app/pay/b;->s:Ljava/lang/String;

    .line 256
    :cond_5
    sget-object v0, Lcom/alipay/android/app/pay/b;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 257
    const-string v0, "1"

    sput-object v0, Lcom/alipay/android/app/pay/b;->t:Ljava/lang/String;

    .line 260
    :cond_6
    sget-object v0, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 261
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    sput-object v0, Lcom/alipay/android/app/pay/b;->k:Ljava/lang/String;

    .line 264
    :cond_7
    sget-boolean v0, Lcom/alipay/android/app/pay/b;->g:Z

    if-eqz v0, :cond_8

    .line 265
    const-string v0, "global_settings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 270
    sput-object v0, Lcom/alipay/android/app/pay/b;->o:Ljava/lang/String;

    .line 273
    :cond_8
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    sput v1, Lcom/alipay/android/app/pay/b;->d:I

    goto/16 :goto_0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    sput v1, Lcom/alipay/android/app/pay/b;->e:I

    goto/16 :goto_1

    .line 189
    :catch_2
    move-exception v0

    .line 190
    const/16 v0, 0x4000

    sput v0, Lcom/alipay/android/app/pay/b;->f:I

    goto/16 :goto_2

    .line 195
    :catch_3
    move-exception v0

    .line 196
    sput-boolean v2, Lcom/alipay/android/app/pay/b;->g:Z

    goto/16 :goto_3

    .line 203
    :catch_4
    move-exception v0

    .line 204
    sput-boolean v2, Lcom/alipay/android/app/pay/b;->h:Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GlobalConstant]Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/alipay/android/app/pay/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/h;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 210
    :catch_5
    move-exception v0

    .line 211
    const/16 v0, 0xe

    sput v0, Lcom/alipay/android/app/pay/b;->i:I

    goto/16 :goto_5

    .line 216
    :catch_6
    move-exception v0

    .line 217
    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/app/pay/b;->j:I

    goto/16 :goto_6

    .line 222
    :catch_7
    move-exception v0

    .line 223
    sput-boolean v2, Lcom/alipay/android/app/pay/b;->l:Z

    goto/16 :goto_7

    .line 228
    :catch_8
    move-exception v0

    .line 229
    sput-boolean v2, Lcom/alipay/android/app/pay/b;->m:Z

    goto/16 :goto_8
.end method
