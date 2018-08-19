
=begin comment

Smartcat Integration API

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program.
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package Smartcat::Client::DocumentApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use JSON;
use Carp qw( croak );
use Log::Any qw($log);

use Smartcat::Client::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata( 'method_documentation' => {} );

sub new {
    my $class = shift;
    my $api_client;

    if ( $_[0] && ref $_[0] && ref $_[0] eq 'Smartcat::Client::ApiClient' ) {
        $api_client = $_[0];
    }
    else {
        $api_client = Smartcat::Client::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}

#
# document_assign_executives
#
#
#
# @param string $document_id  (required)
# @param int $stage_number  (required)
# @param AssignExecutivesRequestModel $request  (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
        'stage_number' => {
            data_type   => 'int',
            description => '',
            required    => '1',
        },
        'request' => {
            data_type   => 'AssignExecutivesRequestModel',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_assign_executives'} = {
        summary => '',
        params  => $params,
        returns => undef,
    };
}

# @return void
#
sub document_assign_executives {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_assign_executives"
        );
    }

    # verify the required parameter 'stage_number' is set
    unless ( exists $args{'stage_number'} ) {
        croak(
"Missing the required parameter 'stage_number' when calling document_assign_executives"
        );
    }

    # verify the required parameter 'request' is set
    unless ( exists $args{'request'} ) {
        croak(
"Missing the required parameter 'request' when calling document_assign_executives"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/assign';

    my $_method       = 'POST';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}
      ->select_header_content_type( 'application/json', 'text/json' );

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'stage_number'} ) {
        $query_params->{'stageNumber'} =
          $self->{api_client}->to_query_value( $args{'stage_number'} );
    }

    my $_body_data;

    # body params
    if ( exists $args{'request'} ) {
        $_body_data = $args{'request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# document_assign_freelancers_to_document
#
# Split the document into equal segments according to the number of words and assign each freelancer to one segment
#
# @param string $document_id Document ID (required)
# @param int $stage_number Workflow stage number (required)
# @param ARRAY[string] $freelancer_user_ids Assignee IDs (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => 'Document ID',
            required    => '1',
        },
        'stage_number' => {
            data_type   => 'int',
            description => 'Workflow stage number',
            required    => '1',
        },
        'freelancer_user_ids' => {
            data_type   => 'ARRAY[string]',
            description => 'Assignee IDs',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{
        'document_assign_freelancers_to_document'} = {
        summary =>
'Split the document into equal segments according to the number of words and assign each freelancer to one segment',
        params  => $params,
        returns => undef,
        };
}

# @return void
#
sub document_assign_freelancers_to_document {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_assign_freelancers_to_document"
        );
    }

    # verify the required parameter 'stage_number' is set
    unless ( exists $args{'stage_number'} ) {
        croak(
"Missing the required parameter 'stage_number' when calling document_assign_freelancers_to_document"
        );
    }

    # verify the required parameter 'freelancer_user_ids' is set
    unless ( exists $args{'freelancer_user_ids'} ) {
        croak(
"Missing the required parameter 'freelancer_user_ids' when calling document_assign_freelancers_to_document"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/assignFreelancers';

    my $_method       = 'POST';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}
      ->select_header_content_type( 'application/json', 'text/json' );

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'stage_number'} ) {
        $query_params->{'stageNumber'} =
          $self->{api_client}->to_query_value( $args{'stage_number'} );
    }

    my $_body_data;

    # body params
    if ( exists $args{'freelancer_user_ids'} ) {
        $_body_data = $args{'freelancer_user_ids'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# document_assign_my_team_executives
#
#
#
# @param AssignMyTeamExecutivesRequestModel $request_model  (required)
{
    my $params = {
        'request_model' => {
            data_type   => 'AssignMyTeamExecutivesRequestModel',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_assign_my_team_executives'} =
      {
        summary => '',
        params  => $params,
        returns => 'int',
      };
}

# @return int
#
sub document_assign_my_team_executives {
    my ( $self, %args ) = @_;

    # verify the required parameter 'request_model' is set
    unless ( exists $args{'request_model'} ) {
        croak(
"Missing the required parameter 'request_model' when calling document_assign_my_team_executives"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/assignFromMyTeam';

    my $_method       = 'POST';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}
      ->select_header_content_type( 'application/json', 'text/json' );

    my $_body_data;

    # body params
    if ( exists $args{'request_model'} ) {
        $_body_data = $args{'request_model'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize( 'int', $response );
    return $_response_object;
}

#
# document_delete
#
# Delete one or several documents
#
# @param ARRAY[string] $document_ids Array of document IDs (required)
{
    my $params = {
        'document_ids' => {
            data_type   => 'ARRAY[string]',
            description => 'Array of document IDs',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_delete'} = {
        summary => 'Delete one or several documents',
        params  => $params,
        returns => undef,
    };
}

# @return void
#
sub document_delete {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_ids' is set
    unless ( exists $args{'document_ids'} ) {
        croak(
"Missing the required parameter 'document_ids' when calling document_delete"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document';

    my $_method       = 'DELETE';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'document_ids'} ) {
        $query_params->{'documentIds'} =
          $self->{api_client}->to_query_value( $args{'document_ids'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# document_get
#
# Receive the document details
#
# @param string $document_id Document ID (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => 'Document ID',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_get'} = {
        summary => 'Receive the document details',
        params  => $params,
        returns => 'DocumentModel',
    };
}

# @return DocumentModel
#
sub document_get {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_get"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'DocumentModel', $response );
    return $_response_object;
}

#
# document_get_auth_url
#
#
#
# @param string $user_id  (required)
# @param string $document_id  (required)
{
    my $params = {
        'user_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
        'document_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_get_auth_url'} = {
        summary => '',
        params  => $params,
        returns => 'string',
    };
}

# @return string
#
sub document_get_auth_url {
    my ( $self, %args ) = @_;

    # verify the required parameter 'user_id' is set
    unless ( exists $args{'user_id'} ) {
        croak(
"Missing the required parameter 'user_id' when calling document_get_auth_url"
        );
    }

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_get_auth_url"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/getAuthUrl';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'user_id'} ) {
        $query_params->{'userId'} =
          $self->{api_client}->to_query_value( $args{'user_id'} );
    }

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'string', $response );
    return $_response_object;
}

#
# document_get_statistics
#
#
#
# @param string $document_id  (required)
# @param boolean $only_exact_matches  (optional)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
        'only_exact_matches' => {
            data_type   => 'boolean',
            description => '',
            required    => '0',
        },
    };
    __PACKAGE__->method_documentation->{'document_get_statistics'} = {
        summary => '',
        params  => $params,
        returns => 'DocumentStatisticsModel',
    };
}

# @return DocumentStatisticsModel
#
sub document_get_statistics {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_get_statistics"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/statistics';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'only_exact_matches'} ) {
        $query_params->{'onlyExactMatches'} =
          $self->{api_client}->to_query_value( $args{'only_exact_matches'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'DocumentStatisticsModel', $response );
    return $_response_object;
}

#
# document_get_translation_status
#
# Receive the status of adding document translation
#
# @param string $document_id Document ID (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => 'Document ID',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_get_translation_status'} = {
        summary => 'Receive the status of adding document translation',
        params  => $params,
        returns => 'string',
    };
}

# @return string
#
sub document_get_translation_status {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_get_translation_status"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/translate/status';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'string', $response );
    return $_response_object;
}

#
# document_get_translations_import_result
#
#
#
# @param string $document_id  (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{
        'document_get_translations_import_result'} = {
        summary => '',
        params  => $params,
        returns => 'Object',
        };
}

# @return Object
#
sub document_get_translations_import_result {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_get_translations_import_result"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/translate/result';

    my $_method       = 'GET';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'Object', $response );
    return $_response_object;
}

#
# document_rename
#
# Rename the assigned document
#
# @param string $document_id Document ID (required)
# @param string $name New name (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => 'Document ID',
            required    => '1',
        },
        'name' => {
            data_type   => 'string',
            description => 'New name',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_rename'} = {
        summary => 'Rename the assigned document',
        params  => $params,
        returns => undef,
    };
}

# @return void
#
sub document_rename {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_rename"
        );
    }

    # verify the required parameter 'name' is set
    unless ( exists $args{'name'} ) {
        croak(
            "Missing the required parameter 'name' when calling document_rename"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/rename';

    my $_method       = 'PUT';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'name'} ) {
        $query_params->{'name'} =
          $self->{api_client}->to_query_value( $args{'name'} );
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# document_translate
#
#
#
# @param string $document_id  (required)
# @param File $translation_file  (required)
# @param boolean $overwrite  (optional)
# @param boolean $confirm_translation  (optional)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
        'translation_file' => {
            data_type   => 'File',
            description => '',
            required    => '1',
        },
        'overwrite' => {
            data_type   => 'boolean',
            description => '',
            required    => '0',
        },
        'confirm_translation' => {
            data_type   => 'boolean',
            description => '',
            required    => '0',
        },
    };
    __PACKAGE__->method_documentation->{'document_translate'} = {
        summary => '',
        params  => $params,
        returns => undef,
    };
}

# @return void
#
sub document_translate {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_translate"
        );
    }

    # verify the required parameter 'translation_file' is set
    unless ( exists $args{'translation_file'} ) {
        croak(
"Missing the required parameter 'translation_file' when calling document_translate"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/translate';

    my $_method       = 'PUT';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type('multipart/form-data');

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'overwrite'} ) {
        $query_params->{'overwrite'} =
          $self->{api_client}->to_query_value( $args{'overwrite'} );
    }

    # query params
    if ( exists $args{'confirm_translation'} ) {
        $query_params->{'confirmTranslation'} =
          $self->{api_client}->to_query_value( $args{'confirm_translation'} );
    }

    # form params
    if ( exists $args{'translation_file'} ) {
        $form_params->{'translationFile'} = []
          unless defined $form_params->{'translationFile'};
        push @{ $form_params->{'translationFile'} }, $args{'translation_file'};
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# document_translate_with_xliff
#
#
#
# @param string $document_id ID of the document to update (required)
# @param boolean $confirm_translation Confirm updated segments (required)
# @param boolean $overwrite_updated_segments Overwrite the segments that have been updated since the last export of the XLIFF file (required)
# @param File $translation_file XLIFF file with updated segments (required)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => 'ID of the document to update',
            required    => '1',
        },
        'confirm_translation' => {
            data_type   => 'boolean',
            description => 'Confirm updated segments',
            required    => '1',
        },
        'overwrite_updated_segments' => {
            data_type => 'boolean',
            description =>
'Overwrite the segments that have been updated since the last export of the XLIFF file',
            required => '1',
        },
        'translation_file' => {
            data_type   => 'File',
            description => 'XLIFF file with updated segments',
            required    => '1',
        },
    };
    __PACKAGE__->method_documentation->{'document_translate_with_xliff'} = {
        summary => '',
        params  => $params,
        returns => undef,
    };
}

# @return void
#
sub document_translate_with_xliff {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_translate_with_xliff"
        );
    }

    # verify the required parameter 'confirm_translation' is set
    unless ( exists $args{'confirm_translation'} ) {
        croak(
"Missing the required parameter 'confirm_translation' when calling document_translate_with_xliff"
        );
    }

    # verify the required parameter 'overwrite_updated_segments' is set
    unless ( exists $args{'overwrite_updated_segments'} ) {
        croak(
"Missing the required parameter 'overwrite_updated_segments' when calling document_translate_with_xliff"
        );
    }

    # verify the required parameter 'translation_file' is set
    unless ( exists $args{'translation_file'} ) {
        croak(
"Missing the required parameter 'translation_file' when calling document_translate_with_xliff"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/translateWithXliff';

    my $_method       = 'PUT';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type('multipart/form-data');

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'confirm_translation'} ) {
        $query_params->{'confirmTranslation'} =
          $self->{api_client}->to_query_value( $args{'confirm_translation'} );
    }

    # query params
    if ( exists $args{'overwrite_updated_segments'} ) {
        $query_params->{'overwriteUpdatedSegments'} = $self->{api_client}
          ->to_query_value( $args{'overwrite_updated_segments'} );
    }

    # form params
    if ( exists $args{'translation_file'} ) {
        $form_params->{'translationFile'} = []
          unless defined $form_params->{'translationFile'};
        push @{ $form_params->{'translationFile'} }, $args{'translation_file'};
    }

    my $_body_data;

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    return;
}

#
# document_update
#
#
#
# @param string $document_id  (required)
# @param UploadDocumentPropertiesModel $update_document_model  (required)
# @param  $file  (required)
# @param string $disassemble_algorithm_name  (optional)
{
    my $params = {
        'document_id' => {
            data_type   => 'string',
            description => '',
            required    => '1',
        },
        'update_document_model' => {
            data_type   => 'UploadDocumentPropertiesModel',
            description => '',
            required    => '1',
        },
        'file' => {
            data_type   => '',
            description => '',
            required    => '1',
        },
        'disassemble_algorithm_name' => {
            data_type   => 'string',
            description => '',
            required    => '0',
        },
    };
    __PACKAGE__->method_documentation->{'document_update'} = {
        summary => '',
        params  => $params,
        returns => 'ARRAY[DocumentModel]',
    };
}

# @return ARRAY[DocumentModel]
#
sub document_update {
    my ( $self, %args ) = @_;

    # verify the required parameter 'document_id' is set
    unless ( exists $args{'document_id'} ) {
        croak(
"Missing the required parameter 'document_id' when calling document_update"
        );
    }

    # verify the required parameter 'update_document_model' is set
    unless ( exists $args{'update_document_model'} ) {
        croak(
"Missing the required parameter 'update_document_model' when calling document_update"
        );
    }

    # verify the required parameter 'file' is set
    unless ( exists $args{'file'} ) {
        croak(
            "Missing the required parameter 'file' when calling document_update"
        );
    }

    # parse inputs
    my $_resource_path = '/api/integration/v1/document/update';

    my $_method       = 'PUT';
    my $query_params  = {};
    my $header_params = {};
    my $form_params   = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}
      ->select_header_accept( 'application/json', 'text/json' );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} =
      $self->{api_client}->select_header_content_type('multipart/form-data');

    # query params
    if ( exists $args{'document_id'} ) {
        $query_params->{'documentId'} =
          $self->{api_client}->to_query_value( $args{'document_id'} );
    }

    # query params
    if ( exists $args{'disassemble_algorithm_name'} ) {
        $query_params->{'disassembleAlgorithmName'} = $self->{api_client}
          ->to_query_value( $args{'disassemble_algorithm_name'} );
    }

    my $_body_data = [];

    # body params
    if ( exists $args{'update_document_model'} ) {
        push(
            @$_body_data,
            updateDocumentModel => [
                undef,
                undef,
                Content_Type => 'application/json',
                Content => to_json( $args{'update_document_model'}->to_hash )
            ]
        );
    }
    if ( exists $args{'file'} ) {
        push(
            @$_body_data,
            file => [
                $args{'file'}, undef,
                Content_Type => 'application/octetstream'
            ]
        );
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api(
        $_resource_path, $_method,    $query_params, $form_params,
        $header_params,  $_body_data, $auth_settings
    );
    if ( !$response ) {
        return;
    }
    my $_response_object =
      $self->{api_client}->deserialize( 'ARRAY[DocumentModel]', $response );
    return $_response_object;
}

1;
